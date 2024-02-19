//
//  HeaderView.swift
//  Fruit
//
//  Created by Diab on 11/02/2024.
//

import SwiftUI

struct HeaderView: View {
    var fruitItem =  CardViewModel.fruitItem
    @State var isAnimation:Bool = false

    
    var body: some View {
        ZStack{
            LinearGradient(colors: fruitItem.gradientColors, startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruitItem.image)
                .resizable()
                .scaledToFit()
                .padding(EdgeInsets(top: 40, leading: 0, bottom: 20, trailing: 0))
                .scaleEffect(isAnimation ? 1 : 0.6)
                .shadow(radius: 10)
        }
        .frame(height: 350)
      
       
            
        .onAppear(){
            withAnimation(.easeInOut(duration: 0.5)) {
                isAnimation = true
            }
        } // :: OnAppear
    }
}

#Preview {
    HeaderView()
}
