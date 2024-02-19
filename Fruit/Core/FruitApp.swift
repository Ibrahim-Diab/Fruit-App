//
//  FruitApp.swift
//  Fruit
//
//  Created by Diab on 04/02/2024.
//

import SwiftUI

@main
struct FruitApp: App {
    @AppStorage("isOnboarding") var isOnboarding:Bool = false
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding{
            HomeView()
            }else {
            OnboardingView()
            }
        
        }
    }
}
