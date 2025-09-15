//
//  CustomViewTab.swift
//  Smarthome
//
//  Created by Pratama One on 13/09/25.
//

import SwiftUI

struct CustomTabView: View {
    @State private var selectedTab: AppTab = .home
    
    var body: some View {
        ZStack(alignment: .bottom) {
            
            // Konten sesuai tab
            Group {
                switch selectedTab {
                case .home:
                    HomeView()
                case .devices:
                    DeviceView()
                case .settings:
                    SettingView()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(.systemGroupedBackground))
            .ignoresSafeArea(edges: [.top])
            
            // Custom Tab Bar
            HStack(spacing: 40) {
                Spacer()
                
                tabButton(.home, label: "Home", icon: "house.fill")
                
                Spacer()
                
                tabButton(.devices, label: "Devices", icon: "square.grid.2x2")
                
                Spacer()
                
                tabButton(.settings, label: "Settings", icon: "gearshape")
                
                Spacer()
            }
            .padding(.vertical, 10)
            .frame(height: 60)
            .background(.white)
            .shadow(color: Color.black.opacity(0.1), radius: 4, x: 0, y: -4)
        }
    }
    
    // MARK: - Reusable Tab Button
    private func tabButton(_ tab: AppTab, label: String, icon: String) -> some View {
        Button(action: {
            selectedTab = tab
        }) {
            VStack(spacing: 5) {
                Image(systemName: icon)
                    .resizable()
                    .padding(.top, 10)
                    .scaledToFit()
                    .frame(width: 35, height: 35)
                    .foregroundStyle(selectedTab == tab ? .orange.opacity(0.8) : .gray.opacity(0.8))
                    .fontWeight(.bold)
                
                Text(label)
                    .font(.caption)
                    .foregroundStyle(selectedTab == tab ? .orange.opacity(0.8) : .gray.opacity(0.8))
            }
        }
    }
}

// MARK: - Enum Tab
enum AppTab {
    case home
    case devices
    case settings
}
