//
//  itemRowview.swift
//  Tareas
//
//  Created by Gerardo Gomez Schekaiban on 29/09/25.
//

import SwiftUI

struct itemRowview: View {
    var body: some View {
        HStack  {
            Image("macbookpro")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 120)
            
            VStack(alignment: .leading){
                Text("Macbook Pro").font(.title)
                Text("$31,899").fontWeight(.semibold).font(.body)
            }
        }
    }
    
}


#Preview {
    itemRowview()
}
