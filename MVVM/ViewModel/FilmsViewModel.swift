//
//  FilmsViewModel.swift
//  Tareas
//
//  Created by Gerardo Gomez Schekaiban on 27/10/25.
//

import Foundation

struct FilmsViewModel{
    
    var films: [Film] {
        
        let filmsdata: [Film] = [
            Film(id: 1, title: "Ice Age", description: "Ice Age Movie...", image: "quepasoayer", director: "Gerardo", producer: "Luis"),
            Film(id: 2, title: "Cars", description: "Alive cars...", image: "cars", director: "David", producer: "Victor")
        ]
        
        return filmsdata
    }
}

