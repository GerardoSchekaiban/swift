//
//  Shapes.swift
//  Tareas
//
//  Created by Gerardo Gomez Schekaiban on 08/09/25.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
        //Aros Olímpicos
                VStack(spacing: -40) { // entrelazar
                            // Fila 1
                            HStack(spacing: 10) {
                                Circle()
                                    .stroke(Color.blue, lineWidth: 10)
                                    .frame(width: 80, height: 80)

                                Circle()
                                    .stroke(Color.black, lineWidth: 10)
                                    .frame(width: 80, height: 80)

                                Circle()
                                    .stroke(Color.red, lineWidth: 10)
                                    .frame(width: 80, height: 80)
                            }

                            // Fila 2
                            HStack(spacing: 10) {
                                Circle()
                                    .stroke(Color.yellow, lineWidth: 10)
                                    .frame(width: 80, height: 80)

                                Circle()
                                    .stroke(Color.green, lineWidth: 10)
                                    .frame(width: 80, height: 80)
                            }
                        }
                
                Spacer()
                
                VStack() {
                    ZStack {
                        Circle()
                            .fill(Color.green)
                            .frame(width: 200)
                        
                        Rectangle()
                            .fill(Color.white)
                            .frame(width: 70, height: 70)
                    }
                }
                
                Spacer()
                
                
                VStack() {
                    ZStack {
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 200)
                        
                        Capsule()
                            .fill(Color.blue)
                            .frame(width: 300, height: 70)
                    }
                }

    }
}

#Preview {
    Shapes()
}
