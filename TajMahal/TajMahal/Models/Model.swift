//
//  Model.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import Foundation

// Cette enumération répertorie 3 niveaux de piment
enum SpiceLevel: Int {
    case light = 1
    case medium = 2
    case hot = 3
}

// Représente l'objet "plat", qui figure sur la carte du menu
struct Dish: Identifiable {
    let id = UUID()
    var name: String
    var description: String
    var allergens: String
    var ingredients: String
    var spiceLevel: SpiceLevel
    var imageName: String
}

// Représente l'objet "ligne d'information" qui est utilisé pour la page accueil
struct InfoRestaurantRow {
    var imageName: String
    var mainInfo: String
    var secondInfo: String?
}
// Représente un "menu" contenant un tableau de plats
struct Menu: Identifiable {
    let id = UUID()
    var sectionTitle: String
    var listSectionDishes: [Dish]
}
