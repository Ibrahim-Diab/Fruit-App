//
//  SourceLinkView.swift
//  Fruit
//
//  Created by Diab on 17/02/2024.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox {
            HStack{
                Text("Content Source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://www.wikipedia.org")!)
                Image(systemName: "arrow.up.right.square")
            }
        }
        .font(.footnote)
    }
}

#Preview {
    SourceLinkView()
        .padding()
}
