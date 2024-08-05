//
//  SectionMenuView.swift
//  TajMahal
//
//  Created by Boualem Dahmane on 23/07/2024.
//

import SwiftUI

//Section d'un menu appelée dans MenuView
struct SectionMenuView: View {
    let menus: [Menu]
    var body: some View {
        List {
            // Accès à la liste des menus
            ForEach(menus, id: \.id) { menu in
                Section {
                    // Accès à la liste de plat de chaque menu
                    ForEach(menu.listSectionDishes, id: \.name) {dish in
                        ZStack {
                            DishRowView(dish: dish)
                            NavigationLink(destination: DishDetailView(dish: dish)) {
                                //
                            }.opacity(0)
                        }
                    }
                } header: {
                    Text(menu.sectionTitle)
                        .font(CustomFont.titleSection)
                        .textCase(.none)
                        .listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
                        .padding(.bottom)
                }
            }
        }
        .listRowSeparator(.hidden)
        .listRowSpacing(10)
        .background(Color("GrayBackground"))
    }
}

#Preview {
    NavigationStack {
        SectionMenuView(menus: ViewModel().listMenu)
    }
    
}
