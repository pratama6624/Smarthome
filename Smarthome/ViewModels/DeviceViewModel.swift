//
//  DeviceViewModel.swift
//  Smarthome
//
//  Created by Pratama One on 13/09/25.
//

import Foundation
internal import Combine

class DeviceViewModel: ObservableObject {
    @Published var devices: [DeviceModel] = [
        DeviceModel(name: "Stand Lamp", location: "Living Room", icon: "lamp.table.fill"),
        DeviceModel(name: "Curtains", location: "Living Room", icon: "rectangle.portrait"),
        DeviceModel(name: "TV", location: "Bedroom", icon: "tv.fill")
    ]
}
