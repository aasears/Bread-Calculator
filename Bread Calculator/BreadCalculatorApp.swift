//
//  BreadCalculatorApp.swift
//  Bread Calculator
//
//  Created by Aaron Sears on 6/27/20.
//  Copyright © 2020 Aaron Sears. All rights reserved.
//

import SwiftUI

@main
struct BreadCalculatorApp: App {
    @StateObject private var recipes = RecipeData()
    
    var body: some Scene {
        WindowGroup {
            ContentView(recipeData: recipes)
        }
    }
}
