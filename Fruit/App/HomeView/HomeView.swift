//
//  ContentView.swift
//  Fruit
//
//  Created by Diab on 04/02/2024.
//

import SwiftUI

struct HomeView: View {
    var fruitData =   CardViewModel().fruitsData
    @State var isPresentedSetting:Bool = false
    var body: some View {
        
        NavigationStack{
        
                List(fruitData,id: \.id) { item in
                    NavigationLink(value: item){
                        ListRowView(fruitData: item)
                    }
                    
            } // -> List
            .navigationTitle("Fruites")
            .navigationDestination(for: Fruit.self) { item in
                DetailsView(fruitItem: item)
            }
            .toolbar(content: {
                Button(action: {
                    isPresentedSetting = true
                }, label: {
                  Image(systemName: "slider.horizontal.3")
                })
            })
            .sheet(isPresented: $isPresentedSetting, content: {
                SettingView()
            })
        }
    }
}

#Preview {
    HomeView()
}
