//
//  SpiceLevelView.swift
//  TajMahal
//
//  Created by Boualem Dahmane on 24/07/2024.
//

import SwiftUI

// Structure qui représente le niveau de piment de chaque plat
struct SpiceLevelView: View {
    let dish: Dish
    var body: some View {
        HStack {
            ForEach(1...3, id: \.self) { level in
                Image("ChiliPepper")
                    .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                    .foregroundStyle(level <= dish.spiceLevel.rawValue ? .red : Color("GrayLine"))
            }
        }
    }
}
