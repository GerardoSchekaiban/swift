//
//  EquipamientoView.swift
//  Tareas
//
//  Created by Gerardo Gomez Schekaiban on 27/10/25.
//

import SwiftUI

struct EquipamientoView: View {
    @Binding var objeto: Objeto
    
    var body: some View {
            VStack(alignment: .leading, spacing: 20) {
               
                VStack(alignment: .leading) {
                    TextField("Nombre del heroe", text: .constant("Link"))
                        .foregroundStyle(Color.white)
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 12).stroke(style: StrokeStyle(lineWidth: 1)))
                }
                
                HStack{
                    VStack(alignment: .leading){
                        Image("normal_link")
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: .infinity)
                            .frame(height: 300)
                            .clipped()
                            .cornerRadius(12)
                            .shadow(radius: 5)
                    }
                    
                    VStack{
                           tunic(image:"blue_tunic")
                            tunic(image:"green_tunic")
                            tunic(image:"red_tunic")
                    }
                }
                
                VStack{
                    Text("Favor Ingresar tu nombre").foregroundStyle(Color.white)
                    Text("Seleccionaste el objeto \(objeto.title)").foregroundStyle(Color.white)
                }
                
                Spacer(minLength: 20)
            }
            .padding(.vertical)
            .background(Color.baseoscuro)
    }
}


struct tunic: View {
    var image: String
    
    var body: some View {
        Image(image)
            .resizable()
            .scaledToFit()
            .frame(maxWidth: .infinity)
            .frame(height: 100)
            .cornerRadius(12)
            .shadow(radius: 5)
            .border(Color.gray, width: 1)
    }
}

#Preview {
    NavigationStack {
        EquipamientoView(objeto: .constant(
            Objeto(
                id: 1,
                title: "Mazo",
                image: "mazo"
            )
        ))
    }
}




