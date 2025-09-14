//
//  ContentView.swift
//  Smarthome
//
//  Created by Pratama One on 10/09/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showOnboarding = true   // default: true
        
    var body: some View {
        if showOnboarding {
            OnboardingView(onFinish: {
                withAnimation {
                    showOnboarding = false
                }
            })
        } else {
            CustomTabView()
        }
    }
}

#Preview {
    ContentView()
}
