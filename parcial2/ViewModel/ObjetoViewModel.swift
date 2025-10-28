//
//  ObjetoViewModel.swift
//  Tareas
//
//  Created by Gerardo Gomez Schekaiban on 27/10/25.
//

import Foundation

struct ObjetoViewModel{
    
    var objetos: [Objeto] {
        
        let objectsdata: [Objeto] = [
            Objeto(id: 1, title: "Bombas", image: "bomba"),
            Objeto(id: 2, title: "Flechas", image: "flechas"),
            Objeto(id: 3, title: "Mazo", image: "mazo"),
            Objeto(id: 4, title: "Boomerang", image: "boomerang"),
            Objeto(id: 5, title: "Resortera", image: "resortera"),
            Objeto(id: 6, title: "Espada", image: "espada"),


        ]
        
        return objectsdata
    }
}
