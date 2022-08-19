//
//  ContentView.swift
//  FoodsUI
//
//  Created by İbrahim Atmaca on 18.08.2022.
//

import SwiftUI

struct ContentView: View {
    
    let layout = [
        GridItem(.fixed(175)),
        GridItem(.fixed(175))
    ]
    
    var body: some View {
        ZStack (alignment: .bottom){
            VStack(alignment: .leading){
                HStack {
                    Image(systemName: "line.3.horizontal")
                        .resizable()
                        .frame(width: 24, height: 25, alignment: .center)
                    Spacer()
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .frame(width: 24, height: 24, alignment: .center)
                        .padding().foregroundColor(.white)
                        .background(Color.secondary).clipShape(Circle()).shadow( radius: 8).padding()
                }
                Text("Food Bazaar").font(.title).foregroundColor(.secondary)
                Text("26 Results").font(.title).foregroundColor(.primary)
                ScrollView (.vertical,showsIndicators: false){
                    LazyVGrid(columns: layout, content: {
                        ForEach(Foods.sampleData) { item in
                            FoodItem(food: item)
                        }
                    })
                }
            }.padding().edgesIgnoringSafeArea(.bottom)
            
            Button(action: {}) {
                Image(systemName: "cart").resizable()
                    .frame(width: 14, height: 14)
                    .padding().background(.yellow).clipShape(Circle()).padding()
                Text("4 Items").foregroundColor(.white).padding(.horizontal)
            }.background(.black.opacity(0.8)).clipShape(Capsule()).shadow(color: .black.opacity(0.2), radius: 20, x: 0, y: 20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
