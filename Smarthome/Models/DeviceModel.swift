//
//  Device.swift
//  Smarthome
//
//  Created by Pratama One on 13/09/25.
//

import Foundation

struct DeviceModel: Identifiable {
    let id = UUID()
    let name: String
    let location: String
    let icon: String
}
