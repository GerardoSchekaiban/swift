//
//  HomeView.swift
//  Tareas
//
//  Created by Gerardo Gomez Schekaiban on 27/10/25.
//

import SwiftUI

struct HomeView: View {
    @State private var selectedItem: Int? = nil
    var body: some View {
        NavigationView {
            ZStack {

                Image("wallpaper")
                    .resizable()
                    .frame()
                    .ignoresSafeArea()
                
                
                NavigationLink(destination: ObjectsListView()) {
                    Text("Empezar")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.yellow)
                        .cornerRadius(10)
                }
            }
        }
    }
}



#Preview {
    HomeView()
}
