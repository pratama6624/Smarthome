//
//  Home.swift
//  Smarthome
//
//  Created by Pratama One on 12/09/25.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var vm = DeviceViewModel()
    @StateObject private var quickAction = QuickActionViewModel()
    @StateObject private var scene = SceneViewModel()
    @State private var showWelcome = false
        
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 20) {
                ZStack(alignment: .topTrailing) {
                    Color.white
                        .ignoresSafeArea(edges: [.leading, .trailing, .bottom, .top])
                        .frame(height: 280)
                    
                    HStack {
                        VStack {
                            HStack {
                                Text("Welcome")
                                    .font(.custom("MuktaMahee-Bold", size: 16))
                                    .padding(.horizontal, 10)
                                    .padding(.vertical, 0)
                                    .foregroundStyle(.white)
                                    .background(Color.cyan)
                                
                                Spacer()
                            }
                            
                            HStack {
                                Text("HOME")
                                    .font(.custom("MuktaMahee-Bold", size: 35))
                                    .padding(.vertical, 0)
                                    .foregroundStyle(.black)
                                    .background(Color.white)
                                
                                Spacer()
                            }
                        }
                        .padding(.horizontal, 40)
                        .padding(.top, 80)
                        
                        Image("home1")
                            .resizable()
                            .scaledToFill()
                            .ignoresSafeArea(edges: [.leading, .top, .trailing, .bottom])
                            .frame(height: 100)
                        
                    }
                    .padding(.top, 80)
                    
                    Button(action: {
                        print("Notification tapped")
                    }) {
                        Image(systemName: "bell.fill")
                            .font(.system(size: 20))
                            .foregroundStyle(.black)
                            .padding()
                            .background(Color.white)
                            .clipShape(Circle())
                            .shadow(color: .black.opacity(0.4), radius: 3, x: 0, y: 2)
                    }
                    .padding(.trailing, 30)
                    .padding(.top, 80)
                }
                .padding(.bottom, 0)
                
                Button(action: {
                    showWelcome = true
                }) {
                    HStack() {
                        Text(verbatim: "Login")
                            .font(.custom("MuktaMahee-Bold", size: 20))
                            .foregroundStyle(.white)
                            .padding(.leading, 20)
                            .padding(.vertical, 10)
                        
                        Spacer()
                        
                        Image(systemName: "inset.filled.trailinghalf.arrow.trailing.rectangle")
                            .font(.system(size: 26))
                            .foregroundStyle(.white)
                            .padding(.trailing, 20)
                            .padding(.vertical, 10)
                    }
                    .background(.orange.opacity(0.8))
                    .cornerRadius(12)
                    .padding(.horizontal, 20)
                    .padding(.top, 10)
                    .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 3)
                }
                .fullScreenCover(isPresented: $showWelcome) {
                    NavigationStack {
                        WelcomeView()
                    }
                }
                
                VStack {
                    HStack {
                        Text("Devices On")
                            .font(.custom("MuktaMahee-Bold", size: 22))
                        
                        Spacer()
                        
                        Text("View All")
                            .font(.custom("MuktaMahee-Bold", size: 22))
                            .foregroundStyle(.gray)
                    }
                    .padding(.horizontal, 25)
                    .padding(.bottom, -5)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            ForEach(vm.devices) { device in
                                DeviceCardView(device: device)
                                    .frame(width: 150) // biar card rapih
                            }
                        }
                        .padding(.vertical, 10)
                        .padding(.horizontal, 30)
                    }
                }
                
                VStack {
                    HStack {
                        Text("Quick Action")
                            .font(.custom("MuktaMahee-Bold", size: 22))
                        
                        Spacer()
                        
                        Text("View All")
                            .font(.custom("MuktaMahee-Bold", size: 22))
                            .foregroundStyle(.gray)
                    }
                    .padding(.horizontal, 25)
                    .padding(.bottom, -5)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 16) {
                            ForEach(quickAction.actions) { action in
                                QuickActionCardView(action: action)
                            }
                        }
                        .padding(.vertical, 10)
                        .padding(.horizontal, 30)
                    }
                }
                
                VStack {
                    HStack {
                        Text("Scenes")
                            .font(.custom("MuktaMahee-Bold", size: 22))
                        
                        Spacer()
                        
                        Text("View All")
                            .font(.custom("MuktaMahee-Bold", size: 22))
                            .foregroundStyle(.gray)
                    }
                    .padding(.horizontal, 25)
                    .padding(.bottom, -5)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            ForEach(scene.scenes) { scene in
                                SceneView(device: scene)
                                    .frame(width: 150) // biar card rapih
                            }
                        }
                        .padding(.vertical, 10)
                        .padding(.horizontal, 30)
                    }
                }
            }
        }
        .padding(.bottom, 80)
    }
}

#Preview {
    HomeView()
}
