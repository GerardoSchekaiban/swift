//
//  Actividad04.swift
//  Tareas
//
//  Created by Gerardo Gomez Schekaiban on 26/09/25.
//

import SwiftUI

struct CreditCard: Identifiable, Equatable {
    let id = UUID()
    let banco: String
    let numero: String
    let vencimiento: String
    let logoName: String
    let nombre: String
}

struct CardContainer: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(.ultraThinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
            .shadow(radius: 4, y: 2)
    }
}

extension View {
    func cardContainer() -> some View { self.modifier(CardContainer()) }
}

struct CreditCardView: View {
    let card: CreditCard
    @Binding var preferredCardID: UUID?
    let isFrozen: Bool
    let onPreferredSet: (CreditCard) -> Void

    private var isPreferred: Bool { preferredCardID == card.id }

    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            // Logo real del banco
            Image(card.logoName)
                .resizable()
                .scaledToFit()
                .frame(width: 44, height: 154)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.gray.opacity(0.3), lineWidth: 1))

            VStack(alignment: .leading, spacing: 6) {
                Text(card.banco)
                    .font(.headline)
                Text("**** \(card.numero.suffix(4))  ·  Vence \(card.vencimiento)")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                
                Text("Tarjetahabiente: \(card.nombre)")
                    .font(.subheadline)
                    .foregroundStyle(.backgroundSelected)
            }

            Spacer()

          
            Button {
                if preferredCardID != card.id {
                    preferredCardID = card.id
                    onPreferredSet(card)
                }
            } label: {
                Image(systemName: isPreferred ? "star.fill" : "star")
                    .imageScale(.large)
                    .accessibilityLabel(isPreferred ? "Tarjeta preferida" : "Marcar como preferida")
            }
            .buttonStyle(.plain)
            .opacity(isFrozen ? 0.5 : 1.0)
        }
        .overlay(alignment: .topTrailing) {
            if isFrozen {
                Label("Bloqueada", systemImage: "lock.fill")
                    .font(.caption2)
                    .padding(.horizontal, 8)
                    .padding(.vertical, 4)
                    .background(.thinMaterial, in: Capsule())
                    .padding(8)
            }
        }
        .cardContainer()
        .allowsHitTesting(!isFrozen) // Deshabilita interacciones si está bloqueada
    }
}

struct ContentView: View {
    @State private var tarjetas: [CreditCard] = [
        .init(banco: "Banco BBVA",   numero: "4111111111111234", vencimiento: "08/27", logoName: "logo_bbva", nombre: "Gerardo Gomez"),
        .init(banco: "Banco Santander",  numero: "5500000000009876", vencimiento: "03/28", logoName: "logo_santander", nombre: "David Castillo"),
        .init(banco: "Banco HSBC",   numero: "340000000000456",  vencimiento: "12/26", logoName: "logo_hsbc", nombre: "Luis Flores")
    ]
    @State private var todasCongeladas = false
    @State private var preferredCardID: UUID? = nil
    
    // Alerta
    @State private var showAlert = false
    @State private var alertMessage = ""
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 12) {
                // Toggle de bloqueo/desbloqueo de TODAS
                Toggle(isOn: $todasCongeladas) {
                    Text("Bloquear todas las tarjetas")
                }
                .toggleStyle(.switch)
                .padding(.horizontal)
                
                if todasCongeladas {
                    GroupBox("Tarjetas congeladas") {
                        Text("Todas las tarjetas están temporalmente bloqueadas.")
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                    }
                    .padding(.horizontal)
                }
                
                ScrollView {
                    LazyVStack(spacing: 12) {
                        ForEach(tarjetas) { card in
                            CreditCardView(
                                card: card,
                                preferredCardID: $preferredCardID,
                                isFrozen: todasCongeladas,
                                onPreferredSet: { selected in
                                    alertMessage = "Tarjeta de \(selected.banco) ha sido establecido como método preferido de pago exitosamente"
                                    showAlert = true
                                }
                            )
                            .padding(.horizontal)
                        }
                    }
                    .padding(.vertical, 8)
                }
            }
            .navigationTitle("Mis tarjetas")
            .alert("Preferencia actualizada", isPresented: $showAlert, actions: {
                Button("OK", role: .cancel) { }
            }, message: {
                Text(alertMessage)
            })
        }
    }
}

#Preview {
    ContentView()
}
