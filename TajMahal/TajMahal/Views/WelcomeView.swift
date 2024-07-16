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
                        Image("TajMahal")
                            .resizable()
                            .scaledToFit()
                        Spacer()
                        RestaurantTitleView()
                        Spacer()
                        RestaurantInfoView()
                        Spacer()
                        ButtonView()
                    }
        }
        .padding([.leading, .trailing], 20)
    }
}

#Preview {
    WelcomeView()
}

struct InfoRow: View {
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
        .font(.system(size: 12, weight: .semibold))
        .foregroundStyle(Color("GreyText"))
        
    }
}

struct RestaurantInfoView: View {
    var viewModel = ViewModel()
    var body: some View {
        ForEach(viewModel.RestaurantInformation, id: \.mainInfo) { info in
            InfoRow(image: info.imageName, mainInfo: info.mainInfo, addInfo: info.secondInfo)
                .padding([.top, .bottom], 5)
        }
    }
}

struct RestaurantTitleView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Restaurant Indien")
                    .font(.system(size: 12, weight: .regular))
                    .foregroundStyle(Color("GreyText"))
                Text("Taj Mahal")
                    .font(.system(size: 18, weight: .bold))
            }
            Spacer()
            Image("Logo")
                .resizable()
                .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color("GreyLogo"))
                .frame(width: 40, height: 40)
            
        }
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
                .foregroundStyle(.white)
                .bold()
        }
    }
}
