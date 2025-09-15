//
//  Text.swift
//  Tareas
//
//  Created by Gerardo Gomez Schekaiban on 14/09/25.
//

import SwiftUI

struct TextExample: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).font(.largeTitle)
        Text("Hello, World!")
            .font(.system(size: 40, weight: .bold, design: .monospaced))
            .foregroundColor(.blue)
            .background(Color.yellow)
        
        
        Text("Gerry gerry Gerry Gerry")
            .frame(width: 50)
            .lineLimit(3)
            .lineSpacing(10)
    }
}

#Preview {
    TextExample()
}
