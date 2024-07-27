//
//  InfoDishDetailView.swift
//  TajMahal
//
//  Created by Boualem Dahmane on 27/07/2024.
//

import SwiftUI

struct InfoDishDetailView: View {
    let dish: Dish
    var body: some View {
        VStack(alignment: .leading, spacing: 18) {
            VStack(alignment:.leading, spacing: 12) {
                Text("Allergènes :")
                    .fontWeight(.semibold)
                Text(dish.allergens)
            }
            Divider()
                .background(Color("GrayLine"))
            VStack(alignment:.leading, spacing: 12) {
                Text("Ingrédients :")
                    .fontWeight(.semibold)
                Text(dish.ingredients)
            }
        }
        .font(.custom("Plus Jakarta Sans", size: 12))
        .foregroundStyle(Color("GrayText"))
        .multilineTextAlignment(.leading)
    }
}

