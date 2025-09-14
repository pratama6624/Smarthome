//
//  SharingControlViewModel.swift
//  Smarthome
//
//  Created by Pratama One on 14/09/25.
//

import Foundation
import SwiftUI
internal import Combine

class SharingControlViewModel: ObservableObject {
    @Published var users: [SharingControlModel] = []
    
    init() {
        fetchUsers()
    }
    
    func fetchUsers() {
        users = [
            SharingControlModel(name: "Nick Reddin", devicesCount: 3, color: Color.blue),
            SharingControlModel(name: "Emma Reddin", devicesCount: 2, color: Color.red),
            SharingControlModel(name: "Jasper Reddin", devicesCount: 3, color: Color.pink)
        ]
    }
}
