//
//  ItemDetailview.swift
//  Tareas
//
//  Created by Gerardo Gomez Schekaiban on 29/09/25.
//

import SwiftUI

struct ItemDetailview: View {
    
    
    @Environment(\.dismiss) var dismiss
     var name: String
     var price: Float
     var priceText:  String  {
     let formatter = NumberFormatter()
     formatter.numberStyle = .decimal
     if let formatted = formatter.string(from: NSNumber(value: price)) {
     return formatted
     }else{
     return String(price)
     }
     }
     
    
    var body: some View {
        
        ScrollView(){
            VStack(alignment: .leading, spacing: 20){
                
                
                Image("macbookpro")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 200)
                    .cornerRadius(15)
                
                Text(name)
                    .font(.system(.headline, design: .rounded))
                    .fontWeight(.bold)
                    .padding()
                
                    .multilineTextAlignment(.center)
                HStack{
                    Text(priceText).font(.title)
                    
                    Text("16% OFF").font(.callout)
                        .fontWeight(.semibold)
                        .foregroundColor(.green)
                }
                
                
                HStack{
                    
                    Text("Cantidad:")
                    Text("1 unidad").fontWeight(.bold)
                    
                    Text("(2 disponibles)").font(.caption)
                        .foregroundColor(Color.secondary)
                }
                
                Text("Descripción").foregroundColor(Color.primary).padding(.top, 40)
                
                Text("""
Gracias al nuevo chip M2, la MacBook Pro de 13 pulgadas es más poderosa que nunca. Ofrece hasta 20 horas de batería1 y un sistema de enfriamiento activo que mantiene un rendimiento increíble en el mismo diseño compacto de siempre.

Con su espectacular pantalla Retina, cámara FaceTime HD y micrófonos con calidad de estudio, es nuestra laptop pro más portátil.
""").foregroundColor(Color.secondary)
                
                
                
                
            }.padding()
            
        }
        .navigationTitle("Detalles")
        .navigationBarTitleDisplayMode(.large)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button{
                    dismiss()
                }
                label: {
                    Image(systemName:"arrow.backward.circle.fill")
                        .foregroundColor(.yellow)
                }
            }
        }
        
        
    }
}

/*

struct ItemDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            ItemDetailview()
        }
    }
}
 */


#Preview {
    ItemDetailview(name: "Macbook", price: 16000)
}
