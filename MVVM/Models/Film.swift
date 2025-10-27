//
//  Film.swift
//  Tareas
//
//  Created by Gerardo Gomez Schekaiban on 27/10/25.
//

import Foundation

struct Film: Codable, Identifiable {
    let id: Int
    let title: String
    let description: String
    let image: String
    let director: String
    let producer: String
    var isLiked: Bool = false
    
}
