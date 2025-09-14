//
//  Welcome.swift
//  Smarthome
//
//  Created by Pratama One on 11/09/25.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Welcome to smart home app")
                    .font(.custom("MuktaMahee-Bold", size: 35))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 30)
                    .padding(.top, 20)
                
                Spacer()
                
                Rectangle()
                    .fill(Color.gray.opacity(0.2))
                    .frame(width: 200, height: 200)
                    .cornerRadius(16)
                    .overlay(
                        Image("welcome")
                            .scaledToFit()
                            .frame(width: 180, height: 180)
                    )
                    .padding(.bottom, 40)
                
                Spacer()
                
                NavigationLink(destination: LoginView()) {
                    ZStack {
                        Text("Login")
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 15)
                            .background(.red)
                            .foregroundColor(.white)
                            .cornerRadius(50)
                            .font(.custom("MuktaMahee-Bold", size: 20))
                        
                        HStack {
                            Spacer()
                            Image(systemName: "arrow.right")
                                .foregroundStyle(Color.red)
                                .padding()
                                .background(.white)
                                .clipShape(Circle())
                                .fontWeight(.bold)
                        }
                        .padding(.trailing, 5)
                    }
                    .padding(.horizontal, 40)
                    .padding(.bottom, 40)
                }
                
                HStack {
                    Text("Here for the first time?")
                        .font(.custom("karu-regular", size: 15))
                    NavigationLink(destination: SignupView()) {
                        Text("Sign Up")
                            .font(.custom("karu-regular", size: 15))
                            .foregroundStyle(Color.blue)
                    }
                }
                .padding(.bottom, 20)
                    
            }
        }
    }
}

#Preview {
    WelcomeView()
}
