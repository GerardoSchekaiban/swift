//
//  nivelDificultad.swift
//  Tareas
//
//  Created by Gerardo Gomez Schekaiban on 10/09/25.
//

import SwiftUI

struct Dificultad: Identifiable {
    let id = UUID()
    let nombre: String
    let caracteristicas: String
    let imagenFondo: String
}

struct nivelDificultad: View {
    
    let dificultades: [Dificultad] = [
           Dificultad(nombre: "Principiante",
                      caracteristicas: "Aprende lo básico: golpes de derecha, revés y saque inicial.",
                      imagenFondo: "alcaraz"),
           
           Dificultad(nombre: "Intermedio",
                      caracteristicas: "Mejora tu consistencia, trabaja voleas y control de ritmo.",
                      imagenFondo: "novak"),
           
           Dificultad(nombre: "Avanzado",
                      caracteristicas: "Domina efectos, posicionamiento táctico y resistencia.",
                      imagenFondo: "rafanadal"),
           
           Dificultad(nombre: "Profesional",
                      caracteristicas: "Juego estratégico, precisión máxima y mentalidad competitiva.",
                      imagenFondo: "rogerfederer")
       ]
       
       @State private var dificultadSeleccionada: Dificultad? = nil
    
    var body: some View {
        ZStack {
                    // Imagen de fondo (cambia con la selección)
                    if let dificultad = dificultadSeleccionada {
                        Image(dificultad.imagenFondo)
                            .resizable()
                            .scaledToFill()
                            .ignoresSafeArea()
                            .transition(.opacity)
                            .opacity(0.6)
                    } else {
                        Image("court")
                            .resizable()
                            .scaledToFill()
                            .ignoresSafeArea()
                            .transition(.opacity)
                            .opacity(0.6)
                    }
                    
                    VStack(spacing: 20) {
                        Text("Selecciona la Dificultad")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .shadow(radius: 5)
                        
                        ForEach(dificultades) { dificultad in
                            Button(action: {
                                withAnimation {
                                    dificultadSeleccionada = dificultad
                                }
                            }) {
                                Text(dificultad.nombre)
                                    .frame(maxWidth: .infinity)
                                    .padding()
                                    .background(dificultadSeleccionada?.id == dificultad.id ? Color.orange : Color.blue)
                                    .foregroundColor(.white)
                                    .cornerRadius(12)
                                    .shadow(radius: 5)
                            }
                        }
                        
                        // Texto con características de la dificultad seleccionada
                        if let dificultad = dificultadSeleccionada {
                            VStack {
                                Text("Características:")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                
                                Text(dificultad.caracteristicas)
                                    .font(.subheadline)
                                    .padding(10)
                                    .foregroundColor(.white)
                                    .background(Color.black.opacity(0.5))
                                    .cornerRadius(12)
                            }
                            .padding(.top, 30)
                            .transition(.slide)
                            .frame(maxWidth: 400)
                        }
                        
                        Spacer()
                    }
                    .padding()
                }
    }
}

#Preview {
    nivelDificultad()
}
