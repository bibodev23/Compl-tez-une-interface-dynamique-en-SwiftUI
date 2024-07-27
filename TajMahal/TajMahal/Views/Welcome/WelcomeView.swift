//
//  WelcomeView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

// Page d'accueil
struct WelcomeView: View {
    var body: some View {
        NavigationStack {
            VStack {
                MainImageWelcomeView()
                Spacer()
                RestaurantTitleWelcomeView()
                Spacer()
                RestaurantInfoWelcomeView()
                Spacer()
                ButtonWelcomeView()
            }
            .padding()
            .navigationBarBackButtonHidden(true)
        }
    }
}

#Preview {
    WelcomeView()
}
