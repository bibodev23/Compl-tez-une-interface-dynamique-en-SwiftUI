//
//  RestaurantTitleWelcomeView.swift
//  TajMahal
//
//  Created by Boualem Dahmane on 27/07/2024.
//

import SwiftUI

struct RestaurantTitleWelcomeView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Restaurant Indien")
                    .font(CustomFont.body)
                    .foregroundStyle(Color("GrayText"))
                Text("Taj Mahal")
                    .font(CustomFont.title)
                    .fontWeight(.bold)
            }
            Spacer()
            Image("Logo")
                .resizable()
                .renderingMode(.template)
                .foregroundColor(Color("GrayLogo"))
                .frame(width: 40, height: 40)
        }
    }
}


