//
//  ObjectsListView.swift
//  Tareas
//
//  Created by Gerardo Gomez Schekaiban on 27/10/25.
//

import SwiftUI

struct ObjectsListView: View {
    @State private var objetos: [Objeto] = ObjetoViewModel().objetos
    
    var body: some View {
        NavigationStack {
            GroupBox {
                Text("It's dangerous to go alone! Take this")
            }
            ScrollView {
                ForEach($objetos) { $objeto in
                    NavigationLink(destination: EquipamientoView(objeto: $objeto)) {
                        ObjectCardView(objeto: $objeto)
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Objetos")
            .background(Color(.baseoscuro))
        }
    }
}

// MARK: - Film Card View
struct ObjectCardView: View {
    @Binding var objeto: Objeto
    
    var body: some View {
        HStack(spacing: 16) {
            // Imagen objeto
            Image(objeto.image)
                .resizable()
                .scaledToFill()
                .frame(width: 50)
            
            // Información del objeto
            VStack(alignment: .leading, spacing: 8) {
                Text(objeto.title)
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.yellow)
                    .lineLimit(2)
            
            }
            .padding(.vertical, 4)
            
            Spacer()
            
            
        }
        .padding()
        .background(Color(.coloritem))
        .border(Color.white, width: 1)

    }
}


#Preview {
    ObjectsListView()
}
