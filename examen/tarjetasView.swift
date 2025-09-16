//
//  tarjetasView.swift
//  Tareas
//
//  Created by Gerardo Gomez Schekaiban on 15/09/25.
// Al imprimir boton, rotar elemento 180 grados.


import SwiftUI

struct tarjetasView: View {
    var body: some View {
        
        Text("Tarjetas de crédito").font(.title)
        
        ScrollView(.vertical, showsIndicators: true){
                ZStack {
                    tarjetaComp(banco: "Banamex", numero: "123412341234", nombre: "Luis Flores", color: .red, imagen: "banamex", tipo: 1)
                    
                tarjetaComp(banco: "Mercado Pago", numero: "1234 1234 1234 1234", nombre: "Luis Flores", color: .blue, imagen: "mercadopago", tipo: 2).offset(y: 160)
               
                tarjetaComp(banco: "Nu", numero: "1234 1234 1234 1234", nombre: "David Castillo", color: .purple, imagen: "mercadopago", tipo: 1).offset(y: 330)
                    
                tarjetaComp(banco: "Stori", numero: "1234 1234 5555 1234", nombre: "Profe Rene", color: .green, imagen: "stori", tipo: 1).offset(y: 480)
                    
                tarjetaComp(banco: "Hey Banco", numero: "1234 6666 1234 1234", nombre: "Mariela Gomez", color: .black, imagen: "hey", tipo: 1).offset(y: 590)

                
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding(10)
        
    }
}


struct tarjetaComp: View {
    
    let banco: String
    let numero: String
    let nombre: String
    let color: Color
    let imagen: String
    let tipo: Int
    
    @State private var isRotated = false
    
    
    var body: some View {
        
        VStack(alignment: .leading){
            
            HStack{
                Text(banco).foregroundColor(.white)
                Image(imagen).resizable()
                    .frame(width: 30, height: 30)
                Spacer()
                Image("contactless").resizable().frame(width: 30, height: 30).foregroundColor(.white)
            }
            
            Text(numero).font(.title2).foregroundColor(.white)
            Text(nombre).font(.title3).foregroundColor(.white)
            
            
            
            HStack{
                Image(systemName: "lock")
                Button(action: {
                    withAnimation(.linear(duration: 1.0)) {
                        isRotated.toggle()
                    }
                }) {
                    Text("Bloquear")
                        .frame(height: 50)
                        .foregroundColor(.white)
                }
                Spacer()
                
                if tipo == 1{
                    masterComp()
                }
                
                if tipo == 2{
                    visaComp()
                }
                
                
            }
        }.frame(maxWidth: 350, maxHeight: 200)
            .padding(10)
            .background(color)
            .cornerRadius(15)
            .rotationEffect(.degrees(isRotated ? 180 : 0))
            
        
    }
}

struct visaComp: View {
    var body: some View {
        ZStack{
            Circle().frame(width: 40, height: 40).foregroundColor(.black)
            Text("VISA").foregroundColor(.white)
        }
    }
}


struct masterComp: View {
    var body: some View {
        ZStack{
            Circle().frame(width: 40, height: 40).foregroundColor(.yellow)
            Circle().frame(width: 40, height: 40).foregroundColor(.blue).offset(x: -25)
            Text("mastercard").foregroundColor(.white).offset(y: 15)
        }
    }
}

#Preview {
    tarjetasView()
    //tarjetaComp()
}
