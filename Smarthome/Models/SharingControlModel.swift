//
//  SharingControlModel.swift
//  Smarthome
//
//  Created by Pratama One on 14/09/25.
//

import Foundation
import SwiftUI

struct SharingControlModel: Identifiable {
    let id = UUID()
    let name: String
    let devicesCount: Int
    let color: Color
}
