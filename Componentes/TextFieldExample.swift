//
//  TextFieldExample.swift
//  Tareas
//
//  Created by Gerardo Gomez Schekaiban on 14/09/25.
//

import SwiftUI

struct TextFieldExample: View {
    
    @State var email = ""
    
    var body: some View {
        TextField("Escribe tu email", text: $email)
            .keyboardType(.emailAddress)
            .padding(10)
            .background(.gray.opacity(0.2))
            .padding(.horizontal, 32)
    }
}

#Preview {
    TextFieldExample()
}
