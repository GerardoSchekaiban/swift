//
//  FilmDetailView.swift
//  Tareas
//
//  Created by Gerardo Gomez Schekaiban on 27/10/25.
//

import SwiftUI

struct FilmDetailView: View {
    @Binding var film: Film
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                // Imagen de la película con botón de like superpuesto
                ZStack(alignment: .topTrailing) {
                    Image(film.image)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: .infinity)
                        .frame(height: 300)
                        .clipped()
                        .cornerRadius(12)
                        .shadow(radius: 5)
                    
                    // Botón de Like superpuesto
                    Button(action: {
                        withAnimation(.spring(response: 0.3, dampingFraction: 0.6)) {
                            film.isLiked.toggle()
                        }
                    }) {
                        Image(systemName: film.isLiked ? "heart.fill" : "heart")
                            .foregroundColor(film.isLiked ? .red : .white)
                            .font(.system(size: 32))
                            .shadow(color: .black.opacity(0.3), radius: 2)
                            .scaleEffect(film.isLiked ? 1.2 : 1.0)
                    }
                    .padding()
                }
                .padding(.horizontal)
                
                // Título con estado de like
                HStack {
                    Text(film.title)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    if film.isLiked {
                        Image(systemName: "heart.fill")
                            .foregroundColor(.red)
                            .font(.title2)
                    }
                }
                .padding(.horizontal)
                
                // Descripción
                VStack(alignment: .leading, spacing: 8) {
                    Text("Descripción")
                        .font(.headline)
                        .foregroundColor(.secondary)
                    
                    Text(film.description)
                        .font(.body)
                        .lineSpacing(4)
                }
                .padding(.horizontal)
                
                // Información del equipo
                VStack(alignment: .leading, spacing: 16) {
                    HStack {
                        Image(systemName: "person.fill")
                            .foregroundColor(.blue)
                            .frame(width: 30)
                        
                        VStack(alignment: .leading, spacing: 2) {
                            Text("Director")
                                .font(.caption)
                                .foregroundColor(.secondary)
                            Text(film.director)
                                .font(.body)
                                .fontWeight(.medium)
                        }
                    }
                    
                    HStack {
                        Image(systemName: "film.fill")
                            .foregroundColor(.purple)
                            .frame(width: 30)
                        
                        VStack(alignment: .leading, spacing: 2) {
                            Text("Productor")
                                .font(.caption)
                                .foregroundColor(.secondary)
                            Text(film.producer)
                                .font(.body)
                                .fontWeight(.medium)
                        }
                    }
                }
                .padding(.horizontal)
                .padding(.top, 8)
                
                Spacer(minLength: 20)
            }
            .padding(.vertical)
        }
        .navigationTitle("Detalles")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        FilmDetailView(film: .constant(
            Film(
                id: 1,
                title: "Cars",
                description: "Cars Movie...",
                image: "cars",
                director: "Gerardo",
                producer: "Luis",
                isLiked: true
            )
        ))
    }
}
