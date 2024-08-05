//
//  CustomFont.swift
//  TajMahal
//
//  Created by Boualem Dahmane on 30/07/2024.
//

import SwiftUI

struct CustomFont {
    static let title = Font.custom("Plus Jakarta Sans", size: 18).bold()
    static let body = Font.custom("Plus Jakarta Sans", size: 12)
    static let titleDishRow = Font.custom("Plus Jakarta Sans", size: 14).weight(.semibold)
    static let priceDishRow = Font.custom("Plus Jakarta Sans", size: 12).weight(.semibold)
    static let titleSection = Font.custom("Plus Jakarta Sans", size: 14).bold()
    static let button = Font.custom("Plus Jakarta Sans", size: 16).bold()
}
