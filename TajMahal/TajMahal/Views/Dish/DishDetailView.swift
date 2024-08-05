//
//  DishDetailView.swift
//  TajMahal
//
//  Created by Boualem Dahmane on 24/07/2024.
//

import SwiftUI

// Page signle d'un plat
struct DishDetailView: View {
    @Environment(\.dismiss) var dismiss
    let dish: Dish
    var body: some View {
        ScrollView {
            VStack {
                ImageDishDetailView(dish: dish)
                InfoDishDetailView(dish: dish)
            }
            .padding()
            .navigationTitle(dish.name).font(CustomFont.title)
            .navigationBarBackButtonHidden()
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {
                        dismiss()
                    }) {
                        Label("Back", systemImage: "chevron.left").tint(.black)
                    }
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        DishDetailView(dish: Dish(name: "Samosas aux légumes", description: "Délicieux chaussons frits garnis de légumes épicés", allergens: "Farine de blé", ingredients: "Mélange de légumes (pommes de terre, petits pois, carottes), épices indiennes, pâte à samosa, huile", spiceLevel: .light, imageName: "Tikka Masala", price: 12))
    }
    
}


