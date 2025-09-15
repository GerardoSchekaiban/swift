//
//  menuView.swift
//  Tareas
//
//  Created by Gerardo Gomez Schekaiban on 15/09/25.
//

import SwiftUI

struct menuView: View {
    var body: some View {
        NavigationStack{
            VStack{
                NavigationLink(destination:imcView()){
                    Text("IMC Calculator")
                }
            }
        }
    }
}

#Preview {
    menuView()
}
