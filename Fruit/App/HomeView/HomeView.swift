//
//  ContentView.swift
//  Fruit
//
//  Created by Diab on 04/02/2024.
//

import SwiftUI

struct HomeView: View {
    var fruitData =   CardViewModel().fruitsData
    var body: some View {
        NavigationStack{
            List(fruitData,id: \.id) { item in
                ListRowView(fruitData: item)
            } // -> List
            .navigationTitle("Fruites")
        }
    }
}

#Preview {
    HomeView()
}
