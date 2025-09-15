//
//  Settings.swift
//  Smarthome
//
//  Created by Pratama One on 13/09/25.
//

import SwiftUI

struct SettingView: View {
    @StateObject private var settingItems = SettingViewModel()
    @StateObject private var users = SharingControlViewModel()
    @State private var showWelcome = false
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                HStack {
                    Image("profile")
                        .resizable()
                        .frame(width: 70, height: 70)
                        .clipShape(Circle())
                        .padding()
                    
                    VStack(alignment: .leading) {
                        Text("Guest")
                            .font(.custom("MuktaMahee-Bold", size: 20))
                        Text(verbatim: "guest@gmail.com")
                            .font(.custom("karu-regular", size: 15))
                    }
                    
                    Spacer()
                    
                    Image(systemName: "gearshape.fill")
                        .font(.system(size: 16))
                        .foregroundStyle(.black)
                        .padding(15)
                        .background(Color.white)
                        .clipShape(Circle())
                        .shadow(color: .black.opacity(0.4), radius: 3, x: 0, y: 2)
                }
                .padding(.trailing, 20)
                
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
                    .padding(.bottom, 20)
                    .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 3)
                }
                .fullScreenCover(isPresented: $showWelcome) {
                    NavigationStack {
                        WelcomeView()
                    }
                }
                
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(settingItems.items, id: \.id) { item in
                        VStack(alignment: .leading, spacing: 12) {
                            ZStack {
                                Circle()
                                    .fill(Color.orange.opacity(0.9))
                                    .frame(width: 40, height: 40)
                                
                                Image(systemName: item.icon)
                                    .foregroundStyle(.white)
                                    .font(.system(size: 20, weight: .bold))
                            }
                            
                            Spacer()
                            
                            Text(item.title)
                                .font(.custom("karu-regular", size: 15))
                                .foregroundColor(.black)
                        }
                        .frame(maxWidth: .infinity, minHeight: 120, alignment: .leading)
                        .padding(.leading, 20)
                        .padding(.vertical,20)
                        .background(Color.white)
                        .cornerRadius(12)
                        .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 3)
                    }
                }
                .padding(.horizontal, 20)
                .padding(.bottom, 25)
                
                VStack(alignment: .leading, spacing: 0) {
                    Text("Sharing & Control")
                        .font(.custom("MuktaMahee-Bold", size: 22))
                        .padding(.horizontal)
                        .padding(.bottom, 20)
                    
                    ScrollView {
                        LazyVStack(spacing: 0) {
                            ForEach(users.users) { user in
                                HStack {
                                    Circle()
                                        .fill(user.color)
                                        .frame(width: 40, height: 40)
                                        .overlay(
                                            Text(String(user.name.prefix(1)))
                                                .foregroundColor(.white)
                                                .font(.headline)
                                        )
                                    
                                    VStack(alignment: .leading) {
                                        Text(user.name)
                                            .font(.custom("MuktaMahee-Bold", size: 18))
                                        Text("\(user.devicesCount) devices")
                                            .font(.custom("MuktaMahee-Regular", size: 16))
                                            .foregroundColor(.gray)
                                    }
                                    .padding(.leading, 10)
                                    
                                    Spacer()
                                    
                                    Image(systemName: "chevron.right")
                                        .foregroundColor(.gray)
                                }
                                .padding(.horizontal, 20)
                                .padding(.vertical, 10)
                            }
                        }
                        .background(Color.white)
                    }
                }
                
            }
            .padding(.horizontal, 20)
        }
        .padding(.top, 70)
        .padding(.bottom, 80)
    }
}

#Preview {
    SettingView()
}

