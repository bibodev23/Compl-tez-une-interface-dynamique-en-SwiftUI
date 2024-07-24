//
//  SectionMenuView.swift
//  TajMahal
//
//  Created by Boualem Dahmane on 23/07/2024.
//

import SwiftUI


struct SectionMenuView: View {
    let menus: [Menu]
    var body: some View {
        List {
            ForEach(menus, id: \.id) { menu in
                Section {
                    ForEach(menu.listSectionDishes, id: \.name) {dish in
                        ZStack {
                            DishRowView(dish: dish)
                            NavigationLink(destination: WelcomeView()) {
                                //
                            }.opacity(0)
                        }
                    }
                } header: {
                    Text(menu.sectionTitle)
                        .font(.custom("Plus Jakarta Sans", size: 14))
                        .bold()
                        .textCase(.none)
                        .padding(.leading, -20)
                        .padding(.bottom, 12)
                }
            }
        }
        .listRowSpacing(12)
    }
}

let viewModel = ViewModel()

#Preview {
    SectionMenuView(menus: viewModel.listMenu)
}
