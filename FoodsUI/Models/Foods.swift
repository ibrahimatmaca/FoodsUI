//
//  Foods.swift
//  FoodsUI
//
//  Created by İbrahim Atmaca on 19.08.2022.
//

import Foundation

struct Foods: Identifiable {
    let id:UUID
    var foodName: String
    var foodState: String
    var type: String
    var serviceType: String
    var price: String
    
    init(id: UUID = UUID(), foodName: String, foodState: String,type: String,serviceType: String,price: String) {
        self.id = id
        self.foodName = foodName
        self.foodState = foodState
        self.type = type
        self.serviceType = serviceType
        self.price = price
    }
}


extension Foods {
    static let sampleData: [Foods] =
    [
        Foods(foodName: "Turkish Durum", foodState: "Very Hot", type: "Classic", serviceType: "Platter", price: "$17.99"),
        Foods(foodName: "Chicken Service", foodState: "Normal", type: "Classic", serviceType: "Platter", price: "$17.99"),
        Foods(foodName: "Service", foodState: "Very Hot", type: "Classic", serviceType: "Platter", price: "$24.99"),
        Foods(foodName: "Chicken Service", foodState: "Normal", type: "Classic", serviceType: "Platter", price: "$12.99"),
        Foods(foodName: "Turkey Service", foodState: "Very Hot", type: "Classic", serviceType: "Platter", price: "$11.99"),
        Foods(foodName: "Chicken Service", foodState: "Cold", type: "Classic", serviceType: "Platter", price: "$17.99"),
        Foods(foodName: "Chicken Service", foodState: "Very Hot", type: "Classic", serviceType: "Platter", price: "$23.34"),
        Foods(foodName: "Meat Service", foodState: "Normal", type: "Classic", serviceType: "Platter", price: "$12.99"),
        Foods(foodName: "Chicken ", foodState: "Cold", type: "Classic", serviceType: "Platter", price: "$56.99")
    ]
}
