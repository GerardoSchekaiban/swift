//
//  imcResult.swift
//  Tareas
//
//  Created by Gerardo Gomez Schekaiban on 15/09/25.
//

import SwiftUI

struct imcResult: View {
    let userWeight: Double
    let userHeight: Double
    var body: some View {
        VStack{
            Text("Tu resultado")
                .font(.title)
                .bold()
                .foregroundColor(.white)
            
            let result = calculateIMC(weight: userWeight, height: userHeight)
            dataView(result: result)
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.backgroundApp)
    }
}

func calculateIMC(weight: Double, height: Double) -> Double {
    let result = weight / (height/100)*2
    return result
}


struct dataView:View {
    let result: Double
    
    var body: some View {
        VStack(){
            Text("\(result)")
                .font(.title)
                .bold()
                .foregroundColor(.green)
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.backgroundApp)
    }
}

#Preview {
    imcResult(userWeight: 80, userHeight: 190)
}
