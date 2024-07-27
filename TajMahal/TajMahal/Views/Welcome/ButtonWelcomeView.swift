//
//  ButtonWelcomeView.swift
//  TajMahal
//
//  Created by Boualem Dahmane on 27/07/2024.
//

import SwiftUI

struct ButtonWelcomeView: View {
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


#Preview {
    ButtonWelcomeView()
}
