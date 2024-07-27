//
//  DishRowView.swift
//  TajMahal
//
//  Created by Boualem Dahmane on 23/07/2024.
//

import SwiftUI

// Ligne d'un plat appelée dans les différentes sections pour représenté la liste des plats
struct DishRowView: View {
    let dish: Dish
    var body: some View {
        HStack(spacing: 20) {
            DishRowImage(dishImageName: dish.imageName)
            DishRowDescription(dish: dish)
        }
        .foregroundStyle(Color("GrayText"))
    }
}

#Preview {
    DishRowView(dish: Dish(name: "Samossa", description: "Samossa", allergens: "Samossa", ingredients: "Samossa", spiceLevel: .light, imageName:"Samosas", price: 12))
}

struct DishRowImage: View {
    let dishImageName: String
    var body: some View {
        Image(dishImageName)
            .resizable()
            .scaledToFill()
            .frame(width: 112, height: 86)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

struct DishRowDescription: View {
    let dish: Dish
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(dish.name)
                .font(.custom("Plus Jakarta Sans", size: 14))
                .fontWeight(.semibold)
            Text(dish.description)
                .font(.custom("Plus Jakarta Sans", size: 12))
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
            HStack {
                Text("\(dish.price, specifier: "%.2f")€")
                    .font(.custom("Plus Jakarta Sans", size: 12))
                    .fontWeight(.semibold)
                Spacer()
                SpiceLevelView(dish: dish)
            }
        }
    }
}
