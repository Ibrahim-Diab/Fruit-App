//
//  FruitGradients.swift
//  Fruit
//
//  Created by Diab on 17/02/2024.
//

import SwiftUI

struct FruitGradients: View {
    var fruitItem =  CardViewModel.fruitItem
    let fruitesGradient = ["Energy","Sugar","Fat","Protein","Vitamins","Minerals"]
    var body: some View {
        GroupBox{
            DisclosureGroup("Nutriation value per 100g"){
                ForEach(0 ..< fruitesGradient.count,id:\.self) { item in
                    Divider().padding(.vertical,4)
                    HStack{
                        Group{
                        Image(systemName: "info.circle")
                            Text(fruitesGradient[item])
                        }.foregroundStyle(fruitItem.gradientColors[0])
                            .font(.body.bold())
                            .multilineTextAlignment(.trailing)
                        Spacer(minLength: 25)
                        Text(fruitItem.nutrition[item])
                    }.padding(.all,4)
                }
            }
        }
    }
}

#Preview {
    FruitGradients()
}
