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
                RestaurantTitleView()
                Spacer()
                RestaurantInfoView()
                Spacer()
                ButtonView()
            }
            .padding()
            .navigationBarBackButtonHidden(true)
        }
    }
}

#Preview {
    WelcomeView()
}

struct MainImageWelcomeView: View {
    var body: some View {
        Image("TajMahal")
            .resizable()
            .scaledToFit()
    }
}

struct RestaurantTitleView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Restaurant Indien")
                    .font(.custom("Plus Jakarta Sans", size: 12))
                    .foregroundStyle(Color("GreyText"))
                Text("Taj Mahal")
                    .font(.custom("Plus Jakarta Sans", size: 18))
                    .fontWeight(.bold)
            }
            Spacer()
            Image("Logo")
                .resizable()
                .renderingMode(.template)
                .foregroundColor(Color("GreyLogo"))
                .frame(width: 40, height: 40)
        }
    }
}

struct InfoRowView: View {
    
    let image: String
    let mainInfo: String
    var addInfo: String?
    
    var body: some View {
        HStack {
            Image(systemName: image)
            Text(mainInfo)
            Spacer()
            Text(addInfo ?? "")
        }
    }
}

struct RestaurantInfoView: View {
    
    var viewModel = ViewModel()
    
    var body: some View {
        VStack(spacing: 14) {
            ForEach(viewModel.restaurantInformationArray, id: \.mainInfo) { info in
                InfoRowView(image: info.imageName, mainInfo: info.mainInfo, addInfo: info.secondInfo)
            }
        }
        .font(.custom("Plus Jakarta Sans", size: 12))
        .fontWeight(.semibold)
        .foregroundStyle(Color("GreyText"))
    }
}

struct ButtonView: View {
    var body: some View {
        NavigationLink {
            MenuView()
        } label : {
            Text("Accéder au menu")
                .frame(maxWidth: .infinity, minHeight: 40)
                .background(RoundedRectangle(cornerRadius: 10).fill(Color("CustomRed")))
                .font(.custom("Plus Jakarta Sans", size: 16))
                .bold()
                .foregroundStyle(.white)
        }
    }
}
