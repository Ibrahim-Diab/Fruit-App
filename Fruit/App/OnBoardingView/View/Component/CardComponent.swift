//
//  CardComponent.swift
//  Fruit
//
//  Created by Diab on 04/02/2024.
//

import SwiftUI

struct CardComponent: View {
    
    var cardInfo:Fruit =  CardViewModel.fruitItem
   @State var imageScale:CGSize = .zero
    @AppStorage("isOnboarding") var isOnboarding:Bool?
    
    var body: some View {
        ZStack{
            LinearGradient(colors: [cardInfo.gradientColors.first!,cardInfo.gradientColors.last!], startPoint: .top, endPoint: .bottom)
            VStack(spacing:8){
                Image(cardInfo.image)
                    .renderImage()
                    .frame(minWidth: 0,maxWidth: .infinity)

                    .offset(x:imageScale.width,y:imageScale.height)
                    .gesture(
                    DragGesture()
                        .onChanged({ value in
                            withAnimation(.spring){
                                imageScale  = value.translation
                            }
    
                           
                        })
                        .onEnded({ value in
                            withAnimation(.easeInOut(duration: 0.7)){
                                imageScale = .zero
                            }
                          
                        })
                    )
            
                
                Text(cardInfo.title)
                    .font(.system(size:35))
                    .fontWeight(.heavy)
                    .foregroundStyle(.white)
                
                Text(cardInfo.headline)
                    .font(.system(size:18,weight: .medium))
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                    .padding()
                
                
                Button(action: {
                   print("isOnboarding")
                    isOnboarding = true
                }, label: {
                    ButtonShapeinOnboarding()
                }).accentColor(.white)
            } // : VStack
          
        }// : Zstack
        .cornerRadius(10)
        .padding()
       
    }
}

#Preview {
    CardComponent()
}


extension Image{
    
    
    func renderImage() -> some View {
        self
            .resizable()
            .scaledToFit()
           
    }
}


struct ButtonShapeinOnboarding: View {
    var body: some View {
        HStack{
            Text("Start")
            Image(systemName: "arrow.right.circle")
        }
        .padding(.vertical,10)
        .padding(.horizontal,16)
        .background(Capsule().strokeBorder(Color.white, lineWidth: 1.0))
    }
}
