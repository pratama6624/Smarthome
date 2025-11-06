//
//  Devices.swift
//  Smarthome
//
//  Created by Pratama One on 13/09/25.
//

import SwiftUI

struct DeviceView: View {
    @StateObject private var scene = SceneViewModel()
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                ZStack(alignment: .topTrailing) {
                    Color.white
                        .ignoresSafeArea(edges: [.leading, .trailing, .bottom, .top])
                        .frame(height: 150)
                    
                    HStack {
                        VStack {
                            HStack {
                                Text("DEVICES")
                                    .font(.custom("MuktaMahee-Bold", size: 35))
                                    .padding(.vertical, 0)
                                    .fontWeight(.bold)
                                    .foregroundStyle(.black)
                                    .background(Color.white)
                                
                                Spacer()
                                
                                Image(systemName: "plus")
                                    .font(.system(size: 22))
                                    .foregroundStyle(.white)
                                    .padding(12)
                                    .fontWeight(.bold)
                                    .background(Color.red)
                                    .clipShape(Circle())
                                    .shadow(color: .black.opacity(0.4), radius: 3, x: 0, y: 2)
                            }
                        }
                        .padding(.horizontal, 20)
                        .padding(.top, 50)
                    }
                    .padding(.top, 20)
                }
                .padding(.bottom, 0)
                
                VStack {
                    HStack {
                        Text("Living Room")
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
                
                VStack {
                    HStack {
                        Text("Kitchen")
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
                
                VStack {
                    HStack {
                        Text("Bedroom")
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
    DeviceView()
}
