//
//  Cartelera.swift
//  Tareas
//
//  Created by Gerardo Gomez Schekaiban on 08/09/25.
//

import SwiftUI

struct Cartelera: View {
    var body: some View {
        
        GeometryReader{ geometry in
            
            
            ScrollView(.horizontal, showsIndicators: true) {
                HStack{
                    
                    VStack{
                        ZStack{
                            Image("quepasoayer")
                                .resizable()
                                .scaledToFill()
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                            
                            Button(action: {}) {
                                Text("Preventa")
                                .padding(.vertical, 5)
                                .padding(.horizontal, 20)
                                .foregroundStyle(.white)
                                .background(Color.black)
                                .cornerRadius(20)
                            }.offset(x: 90, y: 170)
                        }.frame(height: 450)
                        
                        HStack{
                            Text("TBC")
                                .padding(.vertical, 10)
                                .padding(.horizontal, 10)
                                .font(.caption)
                                .bold()
                                .foregroundColor(.blue)
                                .background(Color.gray.opacity(0.3))
                                .cornerRadius(10)
                            
                            Text("155 min")
                                .font(.subheadline)
                                .foregroundColor(.black)
                                .padding()
                        }
                        .frame(width:300, alignment: .leading)
                        
                        Text("Demon Slayer: Kimetsu no Yaiba Cast Inifito")
                            .font(.title2)
                            .bold()
                            .foregroundColor(.black)
                            .frame(width: 300, alignment: .leading)
                            .lineLimit(2)
                            .truncationMode(.middle)
                        
                        HStack{
                            Text("Ver detalle")
                                .font(.callout)
                                .bold()
                                .foregroundColor(.blue)
                                .padding(.top, 5)
                                .underline()
                            
                            Image(systemName: "info.circle").foregroundStyle(.blue)
                                
                                
                        }.frame(width: 300, alignment: .leading)
                        
                        Spacer()
                    }.frame(width: 300)
                        .padding(.horizontal, 20)
                    
                    
                    VStack{
                        ZStack{
                            Image("interestelar")
                                .resizable()
                                .scaledToFill()
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                            
                            Button(action: {}) {
                                Text("Estreno")
                                .padding(.vertical, 5)
                                .padding(.horizontal, 20)
                                .background(Color.blue)
                                .foregroundStyle(.white)
                                .cornerRadius(20)
                            }.offset(x: 90, y: 170)
                        }.frame(height: 450)
                        
                        HStack{
                            Text("B")
                                .padding(.vertical, 10)
                                .padding(.horizontal, 10)
                                .font(.caption)
                                .bold()
                                .foregroundColor(.blue)
                                .background(Color.yellow)
                                .cornerRadius(10)
                            
                            Text("116 min")
                                .font(.subheadline)
                                .foregroundColor(.black)
                                .padding()
                        }
                        .frame(width:320, alignment: .leading)
                        
                        Text("Interestelar")
                            .font(.title2)
                            .bold()
                            .foregroundColor(.black)
                            .frame(width: 320, alignment: .leading)
                        
                        
                        HStack{
                            Text("Ver detalle")
                                .font(.callout)
                                .bold()
                                .foregroundColor(.blue)
                                .padding(.top, 5)
                                .underline()
                            
                            Image(systemName: "info.circle").foregroundStyle(.blue)
                                
                                
                        }.frame(width: 320, alignment: .leading)
                        
                        Spacer()
                        
                        
                    }.frame(width: 300)
                        .padding(.horizontal, 20)
                    
                    
                    VStack{
                        ZStack{
                            Image("cars")
                                .resizable()
                                .scaledToFill()
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                            
                            Button(action: {}) {
                                Text("Estreno")
                                .padding(.vertical, 5)
                                .padding(.horizontal, 20)
                                .background(Color.blue)
                                .foregroundStyle(.white)
                                .cornerRadius(20)
                            }.offset(x: 90, y: 170)
                        }.frame(height: 450)
                        
                        HStack{
                            Text("B")
                                .padding(.vertical, 10)
                                .padding(.horizontal, 10)
                                .font(.caption)
                                .bold()
                                .foregroundColor(.blue)
                                .background(Color.yellow)
                                .cornerRadius(10)
                            
                            Text("116 min")
                                .font(.subheadline)
                                .foregroundColor(.black)
                                .padding()
                        }
                        .frame(width:300, alignment: .leading)
                        
                        Text("Cars 2")
                            .font(.title2)
                            .bold()
                            .foregroundColor(.black)
                            .frame(width: 300, alignment: .leading)
                        
                        
                        HStack{
                            Text("Ver detalle")
                                .font(.callout)
                                .bold()
                                .foregroundColor(.blue)
                                .padding(.top, 5)
                                .underline()
                            
                            Image(systemName: "info.circle").foregroundStyle(.blue)
                                
                                
                        }.frame(width: 300, alignment: .leading)
                        
                        Spacer()
                        
                        
                    }.frame(width: 300)
                        .padding(.horizontal, 20)
                    
                    
                    
                    
                }
            }
        }
    }
}

#Preview {
    Cartelera()
}
