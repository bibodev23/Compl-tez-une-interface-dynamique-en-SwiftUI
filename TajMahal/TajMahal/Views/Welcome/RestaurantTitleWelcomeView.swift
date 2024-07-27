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
                    .font(.custom("Plus Jakarta Sans", size: 12))
                    .foregroundStyle(Color("GrayText"))
                Text("Taj Mahal")
                    .font(.custom("Plus Jakarta Sans", size: 18))
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


