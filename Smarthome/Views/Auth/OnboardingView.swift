//
//  OnboardingView.swift
//  Smarthome
//
//  Created by Pratama One on 10/09/25.
//

import SwiftUI

struct OnboardingView: View {
    @State private var currentPage: Int = 0
    var onFinish: () -> Void
    
    var body: some View {
        NavigationStack {
            VStack {
                // Skip Button
                HStack {
                    Spacer()
                    Button("SKIP") {
                        // Action
                        onFinish()
                    }
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundStyle(.blue)
                    .padding(.top, 10)
                }
                .padding(.horizontal, 40)
                
                Spacer()
                
                TabView(selection: $currentPage) {
                    OnboardingPage(
                        imageName: "onboard",
                        title: "Set Up Devices Easily",
                        description: "Link your home devices by plugging them and connect to Wi-Fi, Control them all using single app"
                    )
                    .tag(0)
                    
                    OnboardingPage(
                        imageName: "onboard1",
                        title: "Control Anywhere",
                        description: "Manage your devices remotely and make your lige easier wherever you are"
                    )
                    .tag(1)
                    
                    OnboardingPage(
                        imageName: "onboard2",
                        title: "Stay Connected",
                        description: "Always staty in sync with your devices, friend, and family"
                    )
                    .tag(2)
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                
                Spacer()
                
                HStack {
                    HStack(spacing: 6) {
                        ForEach(0..<3) { index in
                            Rectangle()
                                .fill(currentPage == index ? Color.blue : Color.gray.opacity(0.3))
                                .frame(width: 28, height: 8)
                                .cornerRadius(10)
                        }
                        
                        Spacer()
                        
                        Button(action: {
                            if currentPage < 2 {
                                withAnimation {
                                    currentPage += 1
                                }
                            } else {
                                // Navigasi ke welcome
                                onFinish()
                            }
                        }) {
                            Image(systemName: "arrow.right")
                                .foregroundStyle(Color.white)
                                .padding()
                                .background(.red)
                                .clipShape(Circle())
                                .fontWeight(.bold)
                        }
                    }
                }
                .padding(.horizontal, 40)
                .padding(.bottom, 30)
            }
        }
    }
}

struct OnboardingPage: View {
    let imageName: String
    let title: String
    let description: String
    
    var body: some View {
        VStack {
            Spacer()
            
            Rectangle()
                .fill(Color.gray.opacity(0.2))
                .frame(width: 200, height: 200)
                .cornerRadius(16)
                .overlay(
                    Image(imageName)
                        .scaledToFit()
                        .frame(width: 180, height: 180)
                )
                .padding(.bottom, 40)

            Spacer()
            
            VStack(alignment: .leading, spacing: 8) {
                Text(title)
                    .font(.custom("MuktaMahee-Bold", size: 24))
                Text(description)
                    .font(.custom("karu-regular", size: 17))
                    .foregroundStyle(.gray)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 40)
            .padding(.bottom, 50)
        }
    }
}

#Preview {
    OnboardingView(onFinish: {})
}
