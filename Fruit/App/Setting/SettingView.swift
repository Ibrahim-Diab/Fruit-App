//
//  SettingView.swift
//  Fruit
//
//  Created by Diab on 18/02/2024.
//

import SwiftUI

struct SettingView: View {
    @Environment(\.presentationMode) var presentedMode
    @AppStorage("isOnboarding") var isOnboarding:Bool = false

    var rowsData :[RowModel]  = [.init(id: 0, key: "Developer", value: "John / Jane"),
                                 .init(id: 1, key: "Designer", value: "Robert Petras"),
                                 .init(id: 2, key: "Compatibility", value: "iOS 16"),
                                 .init(id: 3, key: "Website", value: "Credo Academy"),
                                 .init(id: 4, key: "Twitter", value: "@RobertPetras"),
                                 .init(id: 5, key: "SwiftUI", value: "5"),
                                 .init(id: 6, key: "Version", value: "1.0.3")]
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(spacing:20){
                    TopView(presentedMode: _presentedMode)
                        .padding(.top,25)
                    
                     //MARK: - Center View -
                    GroupBox(label:
                                HStack{
                        Text("Customization".uppercased())
                            .font(.system(size: 25,weight: .bold))
                        Spacer()
                        Image(systemName: "lightbulb.min.badge.exclamationmark.fill")
                        
                    }
                             , content: {
                        Divider().padding(.vertical,4)
                        VStack{
                            Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                                .padding(.vertical, 8)
                                .frame(minHeight: 60)
                                .layoutPriority(1)
                                .font(.footnote)
                                .multilineTextAlignment(.leading)
                            Toggle(isOn: $isOnboarding, label: {
                                if isOnboarding{
                                Text("Restart App").bold().font(.title2)
                                }else {
                                    Text("Restarted").bold().font(.title2).foregroundStyle(.orange)
                                }
                             
                            }).padding().background(Color.gray.opacity(0.24)).clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        }
                 
                        
                    })
                    
                     //MARK: - Bottom View -
                    GroupBox(label:
                                HStack{
                        Text("Application")
                            .font(.system(size: 25,weight: .bold))
                        Spacer()
                        Image(systemName: "iphone")
                    }
                             , content: {
                        ForEach(rowsData) { item in
                            Divider().padding(.vertical,4)
                            RowView(rowItem: item)
                        }
                    })
                    
                 
                    
                }
            }
            
            
        }
        
    }
}

#Preview {
    SettingView()
}


struct TopView: View {
    @Environment(\.presentationMode) var presentedMode
    var body: some View {
        GroupBox(label:
                    HStack{
            Text("Fruites")
                .font(.system(size: 25,weight: .bold))
            Spacer()
            Image(systemName: "info.circle.fill")
            
        }
                 , content: {
            Divider().padding(.vertical,4)
            HStack(alignment: .center, spacing: 10) {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80)
                    .cornerRadius(9)
                Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                    .font(.footnote)
            }
            
        })
        
        
        
        
        
        .navigationTitle("Settings")
        .toolbar(content: {
            Button(action: {
                presentedMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark.circle")
            })
        })
    }
}

struct RowView: View {
    var rowItem = RowModel(id: 0, key: "", value: "")
    var body: some View {
        HStack{
            Text(rowItem.key).fontWeight(.regular).foregroundStyle(.gray)
            Spacer()
            Text(rowItem.value)
        }
        .font(.system(size: 19,weight: .medium))
    }
}

struct RowModel:Identifiable{
    var id:Int
    var key,value:String
}
