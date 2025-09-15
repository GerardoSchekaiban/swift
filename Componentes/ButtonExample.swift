//
//  ButtonExample.swift
//  Tareas
//
//  Created by Gerardo Gomez Schekaiban on 14/09/25.
//

import SwiftUI

struct ButtonExample: View {
    
    //Importante para modificar la vista
    @State var suscriptoresCount = 0
    
    var body: some View {
        Button(action: {
            suscriptoresCount += 1
        }) {
            Text("Suscriptores: \(suscriptoresCount)")
                .frame(height: 50)
                .foregroundColor(.blue)
                .background(Color.yellow)
                .cornerRadius(10)
        }
    }
}

#Preview {
    ButtonExample()
}
