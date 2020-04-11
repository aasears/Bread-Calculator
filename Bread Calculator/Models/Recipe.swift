//
//  Recipe.swift
//  Bread Calculator
//
//  Created by Aaron Sears on 4/1/20.
//  Copyright © 2020 Aaron Sears. All rights reserved.
//

import SwiftUI
import CoreLocation

struct Recipe: Hashable, Codable {
    var id: Int
    var name: String
    var flourQty: Int
    var waterQty: Int
    var yeastQty: Int
    var saltQty: Int

    static let `default` = Self(id: 1, name: "Basic No-Knead", flourQty: 1000, waterQty: 800, yeastQty: 8, saltQty: 11)
    
//    var locationCoordinate: CLLocationCoordinate2D {
//        CLLocationCoordinate2D(
//            latitude: coordinates.latitude,
//            longitude: coordinates.longitude)
//    }

//    enum Category: String, CaseIterable, Codable, Hashable {
//        case artisan = "Artisan"
//        case lakes = "Lakes"
//        case rivers = "Rivers"
//    }
}

//struct Coordinates: Hashable, Codable {
//    var latitude: Double
//    var longitude: Double
//}

struct Recipe_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
