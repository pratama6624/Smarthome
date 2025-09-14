//
//  Devices.swift
//  Smarthome
//
//  Created by Pratama One on 13/09/25.
//

import SwiftUI

struct DeviceView: View {
    var body: some View {
        VStack {
            Text("Devices Page")
                .font(.title)
                .bold()
            Image(systemName: "rectangle.stack.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .foregroundStyle(.blue)
        }
    }
}

#Preview {
    DeviceView()
}
