//
//  ContentView.swift
//  Bread Calculator
//
//  Created by Aaron Sears on 4/1/20.
//  Copyright © 2020 Aaron Sears. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var recipeData: RecipeData
    
    @State var flour: Double = 1000
    @State private var water: Double = 800
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("Bread Calculator")
                    .font(.title)
                VStack {
                    Text("Baker's Percentage")
                        .font(.subheadline)
        
                
                HStack {
                    //Text("Recipe Name" + recipeData.recipe.name)
                    TextField("Recipe Name", text: $recipeData.recipes[0].name)
                }
                .padding(.top)
                HStack {
                    Text("Flour (g):")
                    TextField("Flour Quantity", value: $flour, formatter: NumberFormatter())
                }
                .padding(.leading)
                Slider(value: $flour, in: 0...2000, step: 1, onEditingChanged: {_ in
                    self.water = self.flour * self.recipeData.recipes[0].hydrationPercent
                })
                    .padding()
                HStack {
                    Text("Water (mL):")
                    Spacer()
                    TextField("Water Quantity", value: $water, formatter: NumberFormatter())
                }
                .padding(.leading)
                Slider(value: $water, in: 0...2000, step: 1)
                .padding()
                HStack {
                    Text("Yeast:")
                    Spacer()
                    //Text("Yeast Quantity \(recipeData.recipes[0].yeastQty)")
                    TextField("Yeast Quantity", value: $recipeData.recipes[0].yeastQty, formatter: NumberFormatter())
                }
                .padding(.leading)
                    Slider(value: $recipeData.recipes[0].yeastQty, in: 0...30, step: 1)
                .padding()
                HStack {
                    Text("Salt:")
                    Spacer()
                    TextField("Salt Quantity", value: $recipeData.recipes[0].saltQty, formatter: NumberFormatter())
                    Slider(value: $recipeData.recipes[0].saltQty, in: 0...50, step: 1)
                }
                .padding(.leading)
                
            }
            .padding()
        }
    }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(recipeData: testRecipeData)
    }
}
