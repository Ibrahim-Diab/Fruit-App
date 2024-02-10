//
//  ListRowView.swift
//  Fruit
//
//  Created by Diab on 10/02/2024.
//

import SwiftUI

struct ListRowView: View {
    var fruitData =  CardViewModel.fruitItem
    @State var isPresented:Bool = false

    var body: some View {
        HStack(spacing:9){
            Image(fruitData.image)
                .resizable()
                .frame(width: 100,height: 100)
                .background(LinearGradient(colors: fruitData.gradientColors, startPoint: .top, endPoint: .bottom))
                .cornerRadius(8)
                .onTapGesture {
                    isPresented.toggle()
                }
            VStack(alignment: .leading, spacing: 5) {
              Text(fruitData.title)
                .font(.title2)
                .fontWeight(.bold)
              Text(fruitData.headline)
                .font(.caption)
                .foregroundColor(Color.secondary)
            }
          } //: HSTACK
        .sheet(isPresented: $isPresented, content: {
            imageViewerView(imageViewer: fruitData.image)
        })
        
    }
}

#Preview {
    ListRowView()
}
