//
//  ImageExample.swift
//  Tareas
//
//  Created by Gerardo Gomez Schekaiban on 14/09/25.
//

import SwiftUI

struct ImageExample: View {
    var body: some View {
        
        Image("nole")
            .resizable()
            .scaledToFit()
            .frame(width: 190, height: 150)
        
        Image(systemName: "figure.walk")
            .resizable()
    }
}

#Preview {
    ImageExample()
}
