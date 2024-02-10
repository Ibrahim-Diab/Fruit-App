//
//  imageViewerView.swift
//  Fruit
//
//  Created by Diab on 10/02/2024.
//

import SwiftUI

struct imageViewerView: View {
    var imageViewer:String?
    var body: some View {
        ZStack{
            Color.black.opacity(0.40).ignoresSafeArea()
            Image(imageViewer ?? "apple")
                .resizable()
                .padding(.all,20)
                .shadow(radius: 20)
        }
    }
}

#Preview {
    imageViewerView()
}
