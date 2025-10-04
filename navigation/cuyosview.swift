//
//  cuyosview.swift
//  Tareas
//
//  Created by Gerardo Gomez Schekaiban on 29/09/25.
//

import SwiftUI

struct cuyosview: View {
    var body: some View {
        NavigationStack{
            NavigationLink(destination: cuyosview()){
                Text("cuyos")
                
            }
        }
    }
}

#Preview {
    cuyosview()
}
