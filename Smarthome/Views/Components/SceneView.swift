//
//  SceneView.swift
//  Smarthome
//
//  Created by Pratama One on 13/09/25.
//

import Foundation
import SwiftUI

struct SceneView: View {
    let device: SceneModelModel
    
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .fill(Color.orange.opacity(0.9))
                    .frame(width: 40, height: 40)
                
                Image(systemName: device.icon)
                    .foregroundStyle(.white)
                    .font(.system(size: 20, weight: .bold))
            }
            
            Text(device.name)
                .font(.custom("MuktaMahee-Bold", size: 16))
                .foregroundColor(.black)
            HStack {
                Circle()
                    .frame(width: 8, height: 8)
                    .foregroundColor(device.mode ? .green: .gray)
                
                Text(device.mode ? "On" : "Off")
                    .font(.custom("MuktaMahee-Regular", size: 14))
                    .foregroundColor(.gray)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, minHeight: 150)
        .background(Color.white)
        .cornerRadius(16)
        .shadow(color: .gray.opacity(0.2), radius: 5, x: 0, y: 4)
    }
}

#Preview {
    SceneView(device: SceneModelModel(name: "AC Control", icon: "thermometer", mode: true))
}
