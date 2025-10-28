//
//  FilmListView.swift
//  Tareas
//
//  Created by Gerardo Gomez Schekaiban on 27/10/25.
//

import SwiftUI

// MARK: - Film List View
struct FilmListView: View {
    @State private var films: [Film] = FilmsViewModel().films
    
    var body: some View {
        NavigationStack {
            List {
                ForEach($films) { $film in
                    NavigationLink(destination: FilmDetailView(film: $film)) {
                        FilmCardView(film: $film)
                    }
                    .listRowInsets(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
                    .listRowSeparator(.hidden)
                    .listRowBackground(Color.clear)
                    .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                        Button(role: .destructive) {
                            withAnimation {
                                films.removeAll { $0.id == film.id }
                            }
                        } label: {
                            Label("Eliminar", systemImage: "trash")
                        }
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Películas")
            .background(Color(.systemGroupedBackground))
            .scrollContentBackground(.hidden)
        }
    }
}

// MARK: - Film Card View
struct FilmCardView: View {
    @Binding var film: Film
    
    var body: some View {
        HStack(spacing: 16) {
            // Imagen de la película
            Image(film.image)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 140)
                .clipped()
                .cornerRadius(8)
            
            // Información de la película
            VStack(alignment: .leading, spacing: 8) {
                Text(film.title)
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                    .lineLimit(2)
                
                Text(film.description)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .lineLimit(3)
                
                Spacer()
                
                HStack(spacing: 12) {
                    Label(film.director, systemImage: "person.fill")
                        .font(.caption)
                        .foregroundColor(.blue)
                    
                    Label(film.producer, systemImage: "film.fill")
                        .font(.caption)
                        .foregroundColor(.purple)
                }
            }
            .padding(.vertical, 4)
            
            Spacer()
            
            // Botón de Like
            Button(action: {
                withAnimation(.spring(response: 0.3, dampingFraction: 0.6)) {
                    film.isLiked.toggle()
                }
            }) {
                Image(systemName: film.isLiked ? "heart.fill" : "heart")
                    .foregroundColor(film.isLiked ? .red : .gray)
                    .font(.title2)
                    .scaleEffect(film.isLiked ? 1.1 : 1.0)
            }
            .buttonStyle(PlainButtonStyle())
        }
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
    }
}

// MARK: - Preview
#Preview {
    FilmListView()
}
