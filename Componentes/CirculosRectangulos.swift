//
//  CirculosRectangulos.swift
//  Tareas
//
//  Created by Gerardo Gomez Schekaiban on 14/09/25.
//

import SwiftUI

struct CirculosRectangulos: View {
    var body: some View {
        VStack{
            HStack{
                Rectangle()
                    .foregroundColor(.blue)
                Rectangle()
                    .foregroundColor(.orange)
                Rectangle()
                    .foregroundColor(.yellow)
            }.frame(height: 100)
            
            Rectangle()
                .frame(height: 100)
                .foregroundColor(.orange)
            
            HStack{
                Circle()
                    .foregroundColor(.green)
                Rectangle()
                Circle()                    .foregroundColor(.indigo)

            }.frame(height: 250)
            
            Rectangle()
                .frame(height: 100)
                .foregroundColor(.orange)
            
            HStack{
                Rectangle()
                    .foregroundColor(.blue)
                Rectangle()
                    .foregroundColor(.orange)
                Rectangle()
                    .foregroundColor(.yellow)
            }.frame(height: 100)
            
        }.background(Color.red)
    }
}

#Preview {
    CirculosRectangulos()
}
