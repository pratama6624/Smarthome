//
//  SceneViewModel.swift
//  Smarthome
//
//  Created by Pratama One on 13/09/25.
//

import Foundation
internal import Combine

class SceneViewModel: ObservableObject {
    @Published var scenes: [SceneModelModel] = [
        SceneModelModel(name: "Lamp", icon: "lightbulb.fill", mode: false),
        SceneModelModel(name: "AC Control", icon: "thermometer", mode: true),
        SceneModelModel(name: "Curtain", icon: "curtains.open", mode: false),
    ]
}
