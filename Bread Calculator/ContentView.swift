//
//  ContentView.swift
//  Bread Calculator
//
//  Created by Aaron Sears on 4/1/20.
//  Copyright © 2020 Aaron Sears. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @Binding var recipe: Recipe
    @State var flour: Double = 1000
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("Bread Calculator")
                    .font(.title)
                HStack {
                    Text("Baker's Percentage")
                        .font(.subheadline)
                }
                
                HStack {
                    TextField("Recipe Name", text: $recipe.name)
                }
                .padding(.top)
                HStack {
                    Text("Flour (g):")
                    TextField("Flour Quantity", value: $flour, formatter: NumberFormatter())
                }
                Slider(value: $flour, in: 0...2000, step: 1)
                    .padding()
                HStack {
                    Text("Water:")
                    Spacer()
                    TextField("Water Quantity", value: $recipe.waterQty, formatter: NumberFormatter())
                    Slider(value: $recipe.waterQty, in: 0...2000, step: 1)
                }
                .padding()
                HStack {
                    Text("Yeast:")
                    Spacer()
                    TextField("Yeast Quantity", value: $recipe.yeastQty, formatter: NumberFormatter())
                    Slider(value: $recipe.yeastQty, in: 0...30, step: 1)
                }
                .padding()
                HStack {
                    Text("Salt:")
                    Spacer()
                    TextField("Salt Quantity", value: $recipe.saltQty, formatter: NumberFormatter())
                    Slider(value: $recipe.saltQty, in: 0...50, step: 1)
                }
            .padding()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(recipe: .constant(.default))
    }
}
