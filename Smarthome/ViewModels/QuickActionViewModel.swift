//
//  QuickActionViewModel.swift
//  Smarthome
//
//  Created by Pratama One on 13/09/25.
//

import Foundation
internal import Combine

class QuickActionViewModel: ObservableObject {
    @Published var actions: [QuickActionModel] = [
        QuickActionModel(name: "Get Up", icon: "sunrise.fill"),
        QuickActionModel(name: "Sleep", icon: "bed.double.fill"),
        QuickActionModel(name: "Arrive", icon: "house.fill"),
        QuickActionModel(name: "Leave", icon: "figure.walk.departure"),
        QuickActionModel(name: "Movie", icon: "film.fill"),
        QuickActionModel(name: "Dinner", icon: "fork.knife"),
        QuickActionModel(name: "Relax", icon: "music.note")
    ]
}
