//
//  Recipe.swift
//  Bread Calculator
//
//  Created by Aaron Sears on 4/1/20.
//  Copyright © 2020 Aaron Sears. All rights reserved.
//

import SwiftUI
import CoreLocation

struct Recipe: Identifiable {
    
    
    var id: Int
    var name: String
    var flourQty: Double
    var waterQty: Double
    var yeastQty: Double
    var saltQty: Double
    var hydrationPercent: Double = 0.75

//    static let `default` = Self(id: 1, name: "Basic No-Knead", flourQty: 1000, waterQty: 800, yeastQty: 8, saltQty: 11)
    
//    var locationCoordinate: CLLocationCoordinate2D {
//        CLLocationCoordinate2D(
//            latitude: coordinates.latitude,
//            longitude: coordinates.longitude)
//    }

    func calculateRecipe(_ recipe: Recipe) -> Recipe {
        var updatedRecipe = recipe
        updatedRecipe.waterQty = recipe.flourQty * recipe.hydrationPercent
        updatedRecipe.yeastQty = recipe.flourQty * 0.012
        updatedRecipe.saltQty = recipe.flourQty * 0.02
        
        return updatedRecipe
    }
    
//    enum Category: String, CaseIterable, Codable, Hashable {
//        case artisan = "Artisan"
//        case lakes = "Lakes"
//        case rivers = "Rivers"
//    }

//struct Coordinates: Hashable, Codable {
//    var latitude: Double
//    var longitude: Double
//}

}

let testData = [
    Recipe(id: 1, name: "Basic No-Knead", flourQty: 1000, waterQty: 800, yeastQty: 8, saltQty: 11),
    Recipe(id: 2, name: "Knead Bread", flourQty: 500, waterQty: 400, yeastQty: 4, saltQty: 5)
]

