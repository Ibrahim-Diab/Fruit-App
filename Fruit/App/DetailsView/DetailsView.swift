//
//  DetailsView.swift
//  Fruit
//
//  Created by Diab on 11/02/2024.
//

import SwiftUI

struct DetailsView: View {
    var fruitItem =  CardViewModel.fruitItem
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false){
            VStack(spacing:10){
                HeaderView(fruitItem: fruitItem)
                Spacer()
                VStack(alignment:.leading,spacing: 10){
                    Text(fruitItem.title)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(fruitItem.gradientColors[1])
                    
                    // HEADLINE
                    Text(fruitItem.headline)
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                    
                    FruitGradients(fruitItem: fruitItem)
                       .padding(EdgeInsets(top: 0, leading: 6, bottom: 0, trailing: 6))
                }.padding(EdgeInsets(top: 0, leading: 10, bottom: 5, trailing: 10))
                
                Group{
                    Text("Learn more about \(fruitItem.title)".uppercased())
                        .fontWeight(.bold)
                        .foregroundColor(fruitItem.gradientColors[1])
                    Text(fruitItem.description)
                        .multilineTextAlignment(.leading)
                        .padding()
                    
                    SourceLinkView()
                        .padding()
                }.padding(EdgeInsets(top: 0, leading: 10, bottom: 5, trailing: 10))
                
            } // :: VStack
        } // :: Scroll View
        .ignoresSafeArea()
        .padding(.bottom,10)
        

        
    }
}

#Preview {
    DetailsView()
}
