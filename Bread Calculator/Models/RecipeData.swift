//
//  RecipeData.swift
//  Bread Calculator
//
//  Created by Aaron Sears on 4/14/20.
//  Copyright © 2020 Aaron Sears. All rights reserved.
//

import SwiftUI
import Combine

class RecipeData: ObservableObject {
//    @Published var currentRecipe = Recipe.default
    
    @Published var recipes: [Recipe]
    
    init(recipes: [Recipe] = []) {
        self.recipes = recipes
    }
    
}

let testRecipeData = RecipeData(recipes: testData)
