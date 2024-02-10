//
//  OnboardingView.swift
//  Fruit
//
//  Created by Diab on 04/02/2024.
//

import SwiftUI

struct OnboardingView: View {
    var cardViewModelFruites = CardViewModel().fruitsData
    
    var body: some View {
        TabView{
            
            ForEach(cardViewModelFruites) { item in
                CardComponent(cardInfo: item)
            }
            
            
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical,20)
    }
}


#Preview {
    OnboardingView()
}
