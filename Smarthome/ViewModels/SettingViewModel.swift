//
//  SettingViewModel.swift
//  Smarthome
//
//  Created by Pratama One on 14/09/25.
//

import Foundation
internal import Combine

class SettingViewModel: ObservableObject {
    @Published var items: [SettingModel] = [
        SettingModel(icon: "gearshape.fill", title: "Set Up Device"),
        SettingModel(icon: "bell.fill", title: "Activity"),
        SettingModel(icon: "key.fill", title: "Manage Rooms"),
        SettingModel(icon: "chart.bar.fill", title: "Usage Statistic")
    ]
}
