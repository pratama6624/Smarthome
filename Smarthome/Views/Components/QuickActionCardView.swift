//
//  SwiftUIView.swift
//  Smarthome
//
//  Created by Pratama One on 13/09/25.
//

import SwiftUI

struct QuickActionCardView: View {
    let action: QuickActionModel
    
    var body: some View {
        HStack {
            Text(action.name)
                .font(.custom("MuktaMahee-Bold", size: 16))
                .foregroundColor(.white)
            
            Spacer()
                
            Image(systemName: action.icon)
                .foregroundColor(.white)
                .font(.system(size: 16, weight: .bold))

        }
        .frame(width: 100, height: 60)
        .padding(.horizontal, 15)
        .padding(.vertical, 0)
        .background(Color.cyan.opacity(0.9))
        .cornerRadius(2)
        .shadow(color: .gray.opacity(0.2), radius: 4, x: 0, y: 3)
    }
}

#Preview {
    QuickActionCardView(action: QuickActionModel(name: "Sleep", icon: "bed.double.fill"))
}
