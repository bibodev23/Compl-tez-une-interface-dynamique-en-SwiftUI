//
//  ImageDishDetailView.swift
//  TajMahal
//
//  Created by Boualem Dahmane on 27/07/2024.
//

import SwiftUI

struct ImageDishDetailView: View {
    var dish: Dish
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Image(dish.imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 10))
            SpiceLevelView(dish: dish)
                .padding(5)
                .background(RoundedRectangle(cornerRadius: 100).fill(.white))
                .padding()
        }
    }
}
