//
//  ListRowView.swift
//  Fruit
//
//  Created by Diab on 10/02/2024.
//

import SwiftUI

struct ListRowView: View {
    var fruitData =  CardViewModel.fruitItem

    var body: some View {
        HStack(spacing:9){
            Image(fruitData.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100,height: 100)
                .background(LinearGradient(colors: fruitData.gradientColors, startPoint: .top, endPoint: .bottom))
                .cornerRadius(8)
            VStack(alignment: .leading, spacing: 5) {
              Text(fruitData.title)
                .font(.title2)
                .fontWeight(.bold)
              Text(fruitData.headline)
                .font(.caption)
                .foregroundColor(Color.secondary)
            }
          } //: HSTACK
        
        
    }
}

#Preview {
    ListRowView()
}
