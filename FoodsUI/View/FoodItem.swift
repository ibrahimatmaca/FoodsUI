//
//  FoodItem.swift
//  FoodsUI
//
//  Created by İbrahim Atmaca on 19.08.2022.
//

import SwiftUI

struct FoodItem: View {
    let food: Foods
    var body: some View {
        VStack(alignment: .leading){
            HStack {
                Image(systemName: "flame.fill").resizable()
                    .frame(width: 16, height: 16)
                .foregroundColor(.red)
                Text(food.foodState).font(.footnote).foregroundColor(.primary)
            }
            Image("food").resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 150)
            Text(food.foodName).font(.headline)
            Text(food.serviceType).foregroundColor(.secondary).font(.subheadline)
                .padding(.bottom,12)
            Text(food.price).font(.title)
        }.frame(width: 160, height: 300).background(Color.secondary.opacity(0.3))
            .cornerRadius(20)
    }
}

struct FoodItem_Previews: PreviewProvider {
    static var food = Foods.sampleData[0]
    static var previews: some View {
        FoodItem(food: food)
            .previewLayout(.fixed(width: 300, height: 300))
    }
}
