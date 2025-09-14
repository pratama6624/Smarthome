//
//  ForgotPassword.swift
//  Smarthome
//
//  Created by Pratama One on 12/09/25.
//

import SwiftUI

struct ForgotPasswordView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 20) {
                Text("Forgot Password")
                    .font(.custom("MuktaMahee-Bold", size: 30))
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("Enter the email associated with your account to reset your password.")
                        .font(.custom("karu-regular", size: 17))
                        .foregroundStyle(.gray)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, 50)
                
                VStack(alignment: .leading, spacing: 5) {
                    Text("Email")
                        .font(.custom("karu-regular", size: 18))
                        .foregroundStyle(.gray)
                    
                    HStack {
                        TextField("Enter email", text: $username)
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
                
                Spacer()
                
                Spacer()
                
                ZStack {
                    Text("Send Reset Link")
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
    ForgotPasswordView()
}
