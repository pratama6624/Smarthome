//
//  Login.swift
//  Smarthome
//
//  Created by Pratama One on 12/09/25.
//

import SwiftUI

struct LoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var gotToResetPassword: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 20) {
                Text("Login")
                    .font(.custom("MuktaMahee-Bold", size: 30))
                
                Spacer()
                
                VStack(alignment: .leading, spacing: 5) {
                    Text("Username")
                        .font(.custom("karu-regular", size: 18))
                        .foregroundStyle(.gray)
                    
                    HStack {
                        TextField("Enter username", text: $username)
                            .font(.custom("karu-regular", size: 18))
                            .foregroundStyle(.blue)
                        
                        if !username.isEmpty {
                            Image(systemName: "checkmark.circle.fill")
                                .foregroundStyle(.blue)
                        }
                    }
                    .padding(.bottom, 8)
                    .overlay(
                        Rectangle()
                            .frame(height: 1)
                            .padding(.top, 35), alignment: .bottom
                    )
                    .foregroundStyle(.gray)
                }
                
                VStack(alignment: .leading, spacing: 5) {
                    Text("Password")
                        .font(.custom("karu-regular", size: 18))
                        .foregroundStyle(.gray)
                    
                    HStack {
                        SecureField("Enter password", text: $password)
                            .font(.custom("karu-regular", size: 18))
                            .foregroundStyle(.blue)
                    }
                    .padding(.bottom, 8)
                    .overlay(
                        Rectangle()
                            .frame(height: 1)
                            .padding(.top, 35), alignment: .bottom
                    )
                    .foregroundStyle(.gray)
                }
                
                HStack {
                    Spacer()
                    
                    Button(action: {
                        // action here
                        gotToResetPassword = true
                    }) {
                        Text("Forgot password")
                            .font(.custom("karu-regular", size: 18))
                            .foregroundStyle(.cyan)
                    }
                }
                
                // Hidden function for reset password
                NavigationLink(
                    destination: ForgotPasswordView(),
                    isActive: $gotToResetPassword
                ) {
                    EmptyView()
                }
                .hidden()
                
                Spacer()
                
                Spacer()
                
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
                .padding(.bottom, 40)
                
                HStack() {
                    Spacer()
                    Text("or login via")
                        .font(.custom("karu-regular", size: 15))
                    Spacer()
                }
                .padding(.bottom, 20)
                
                // Social login buttons
                HStack(spacing: 20) {
                    Button(action: {}) {
                        HStack {
                            Image(systemName: "a.circle.fill")
                                .foregroundColor(.black)
                            Text("Apple")
                                .foregroundColor(.black)
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(30)
                        .shadow(color: .gray.opacity(0.2), radius: 5, x: 0, y: 2)
                    }
                    
                    Button(action: {}) {
                        HStack {
                            Image(systemName: "g.circle.fill")
                                .foregroundColor(.red)
                            Text("Google")
                                .foregroundColor(.black)
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(30)
                        .shadow(color: .gray.opacity(0.2), radius: 5, x: 0, y: 2)
                    }
                }
                
                Spacer()
                
                HStack {
                    Spacer()
                    Text("Here for the first time?")
                        .font(.custom("karu-regular", size: 15))
                    NavigationLink(destination: SignupView()) {
                        Text("Sign Up")
                            .font(.custom("karu-regular", size: 15))
                            .foregroundStyle(Color.blue)
                    }
                    Spacer()
                }
                .padding(.bottom, 20)
            }
            .padding(.horizontal, 30)
            .navigationBarBackButtonHidden(false)
        }
    }
}

#Preview {
    LoginView()
}
