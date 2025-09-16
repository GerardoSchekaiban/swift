//
//  imcView.swift
//  Tareas
//
//  Created by Gerardo Gomez Schekaiban on 15/09/25.
//

import SwiftUI

struct imcView: View {
    
    //State se pasa al Toogle Button
    @State var gender: Int = 1
    @State var height: Double = 150
    @State var edad: Int = 18
    @State var peso: Int = 60

    
    
    var body: some View {
        VStack{
            HStack{
                //Binding se agrega al toggleButton
                toggleButton(text: "Hombre", imageName: "heart.fill", gender: 0, selectedGender: $gender)
                toggleButton(text: "Mujer", imageName: "star.fill", gender: 1, selectedGender: $gender)
            }
            
                        
            heightCalc(selectedHeight: $height)
            
            HStack{
                counterButton(title: "Edad", count: $edad)
                counterButton(title: "Peso", count: $peso)
            }
            
            imcCalculate(userWeight: Double(peso), userHeight: height)

        }.frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.backgroundApp)
            
    }
}

struct imcCalculate: View {
    let userWeight: Double
    let userHeight: Double
    var body: some View {
        NavigationStack{
            NavigationLink(destination:imcResult(userWeight: userWeight, userHeight: userHeight)){
                Text("Calcular")
                    .font(.title)
                    .bold()
                    .foregroundColor(.purple)
                    .frame(maxWidth: .infinity, maxHeight: 100)
                    .background(.backgroundComp)
            }
        }
    }
}


struct toggleButton:View {
    let text: String
    let imageName: String
    let gender: Int
    
    
    //Se crea un binding
    @Binding var selectedGender:Int
    
    var body: some View {
        
        let color = if(gender == selectedGender){
            Color.backgroundSelected
        }else{
            Color.backgroundComp
        }
        
        Button(action: {
         //Binding se iguala a gender
            selectedGender = gender
        } ) {
            VStack{
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 120)
                    .foregroundColor(.white)
                
                infoText(text: text)
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(color)
            
        }
        
    }
}

struct infoText: View {
    let text: String
        
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .bold()
            .foregroundColor(.white)
    }
}


struct smallText: View {
    let text: String
        
    var body: some View {
        Text(text)
            .font(.title2)
            .foregroundColor(.gray)
    }
}

struct heightCalc: View {
    
    @Binding var selectedHeight: Double
    var body: some View {
        VStack{
            smallText(text: "Altura")
            infoText(text: "\(selectedHeight) cm")
            Slider(value: $selectedHeight, in: 100...220, step: 1).padding(.horizontal, 16)
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.backgroundComp)
    }
}

struct counterButton: View {
    
    let title: String
    @Binding var count: Int
    
    var body: some View {
        VStack{
            smallText(text: title)
            infoText(text: String(count))
            HStack{
                Button(action: {
                    if count > 0 {
                        count -= 1
                    }
                }){
                   ZStack{
                       
                       Circle().frame(width: 70).foregroundColor(.purple)
                       
                        Image(systemName: "minus")
                           .resizable()
                           .scaledToFit()
                           .frame(width: 20, height: 20)
                            .foregroundColor(.white)
                    }
                }
                
                Button(action: {
                    count += 1
                }){
                   ZStack{
                       
                       Circle().frame(width: 70).foregroundColor(.purple)
                       
                        Image(systemName: "plus")
                           .resizable()
                           .frame(width: 20, height: 20)
                            .foregroundColor(.white)
                    }
                }
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.backgroundComp)
    }
}


#Preview {
    //toggleButton(text: "String", imageName: "heart.fill", index: 0)
    imcView()
}
