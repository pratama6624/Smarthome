//
//  Scene.swift
//  Smarthome
//
//  Created by Pratama One on 13/09/25.
//

import Foundation

struct SceneModelModel: Identifiable {
    let id = UUID()
    let name: String
    let icon: String
    let mode: Bool
}
