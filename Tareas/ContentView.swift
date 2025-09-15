//
//  ContentView.swift
//  Tareas
//
//  Created by Gerardo Gomez Schekaiban on 08/09/25.
//

import SwiftUI

struct ContentView: View {
    
    let titulo: String = String(localized: "titulo")
    let texto: String = String(localized: "texto")

    var body: some View {
        VStack {
                    Text("EPISODIO HHH")
                .padding(.bottom, 10).padding(.top, 32).font(.custom("starjedi",size: 18))
                    Text(titulo).padding(.bottom, 10).font(.custom("starjedi",size: 18))
                    Text(texto).multilineTextAlignment(.leading)
                        .rotation3DEffect(.degrees(50),axis: (x: 1, y: 0, z: 0),perspective: 0.5).padding(.horizontal, 32).offset(y: -100).font(.custom("starjedi",size: 14))
                    Spacer()
                }.frame(maxWidth: .infinity, maxHeight: .infinity).background(Color.black).foregroundStyle(.yellow)
            }
        }


#Preview {
    ContentView()
}
