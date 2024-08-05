//
//  MenuView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI
// Menu sous forme de liste
struct MenuView: View {
    @Environment(\.dismiss) var dismiss
    // Référence vers le view model qui permet d'accéder aux tableaux d'entrées et de plats du menu
    let viewModel = ViewModel()
    var body: some View {
        SectionMenuView(menus: viewModel.listMenu)
            .foregroundStyle(Color("GrayText"))
            .navigationTitle("Menu").font(CustomFont.title)
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

#Preview {
    NavigationStack {
        MenuView()
    }
    
}



