//
//  Signup.swift
//  Smarthome
//
//  Created by Pratama One on 12/09/25.
//

import SwiftUI

struct SignupView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 20) {
                Text("Sign Up")
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
                
                VStack(alignment: .leading, spacing: 5) {
                    Text("Password Confirmation")
                        .font(.custom("karu-regular", size: 18))
                        .foregroundStyle(.gray)
                    
                    HStack {
                        SecureField("Enter password again", text: $password)
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
                
                Spacer()
                
                ZStack {
                    Text("Sign Up")
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
                .padding(.bottom, 20)
                
                HStack {
                    Spacer()
                    Text("Already have an account")
                        .font(.custom("karu-regular", size: 15))
                    NavigationLink(destination: LoginView()) {
                        Text("Login now")
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
    SignupView()
}
