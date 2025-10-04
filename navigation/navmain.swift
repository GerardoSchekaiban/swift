//
//  navmain.swift
//  Tareas
//
//  Created by Gerardo Gomez Schekaiban on 29/09/25.
//

import SwiftUI

struct navmain: View {
    var body: some View {
        VStack{
            Text("Bienvenido")
            Spacer()
            NavigationStack{
                
                NavigationLink(destination: ItemDetailview(name: "Macbook", price: 16000)){
                    itemRowview()
                }
                
                NavigationLink(destination: ItemDetailview(name: "Macbook Pro", price: 17000)){
                    itemRowview()
                }
                
                Spacer()
                Text("Desarrollado por gerry")
            }
            
            
            
        }
    }
}

#Preview {
    navmain()
}
