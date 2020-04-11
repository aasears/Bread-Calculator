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
    
    var body: some View {
        VStack {
//            MapView()
//                .edgesIgnoringSafeArea(.top)
//                .frame(height: 300)
            
//            CircleImage()
//                .offset(y: -130)
//                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Bread Calculator")
                    .font(.title)
                HStack {
                    Text("Baker's Percentage")
                        .font(.subheadline)
                    Spacer()

                }
                TextField("Recipe Name", text: $recipe.name)
                TextField("Flour Quantity", value: $recipe.flourQty, formatter: NumberFormatter())
                TextField("Water Quantity", value: $recipe.waterQty, formatter: NumberFormatter())
                TextField("Yeast Quantity", value: $recipe.yeastQty, formatter: NumberFormatter())
                TextField("Salt Quantity", value: $recipe.saltQty, formatter: NumberFormatter())
            }
            .padding()
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(recipe: .constant(.default))
    }
}
