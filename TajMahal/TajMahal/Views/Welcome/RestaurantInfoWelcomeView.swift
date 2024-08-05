//
//  RestaurantInfoWelcomeView.swift
//  TajMahal
//
//  Created by Boualem Dahmane on 27/07/2024.
//

import SwiftUI

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

struct RestaurantInfoWelcomeView: View {
    
    var viewModel = ViewModel()
    
    var body: some View {
        VStack(spacing: 14) {
            ForEach(viewModel.restaurantInformationArray, id: \.mainInfo) { info in
                InfoRowView(image: info.imageName, mainInfo: info.mainInfo, addInfo: info.secondInfo)
            }
        }
        .font(CustomFont.body)
        .fontWeight(.semibold)
        .foregroundStyle(Color("GrayText"))
    }
}
