//
//  LoginView.swift
//  Budget-Tracking-SwiftUI
//
//  Created by Ejder Dağ on 30.03.2024.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email = ""
    @State private var password = ""
    @EnvironmentObject var authViewModel: AuthViewModel
    
    var body: some View {
        
        // parent container
        VStack {
            
            AuthHeaderView(row1: "Hello.", row2: "Welcome Back")
            
            VStack(spacing: 30) {
                
                CustomInputField(iconName: "envelope", placeholderText: "Email", text: $email)
                
                CustomInputField(iconName: "lock", placeholderText: "Password", isSecured: true, text: $password)
            }
            .padding(.horizontal, 32)
            .padding(.top, 44)
            
            HStack {
                Spacer()
                
                NavigationLink {
                    Text("clicked forgot password")
                } label: {
                    Text("Forgot Password?")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color(.systemOrange))
                        .padding(.top)
                        .padding(.trailing, 5)
                }
            }
                
            Button {
                authViewModel.login(withEmail: email, password: password)
            } label: {
                Text("Sign In")
                    .font(.headline)
                    .frame(width: 350, height: 50)
                    .foregroundStyle(Color(.white))
                    .background(Color(.systemOrange))
                    .clipShape(Capsule())
                    .padding()
            }
            .shadow(color: .gray.opacity(0.5), radius: 10)
            
            Spacer()
            
            NavigationLink {
                SignUpView()
                    .toolbar(.hidden)
            } label: {
                
                HStack {
                    Text("Don't have an account?")
                        .font(.footnote)
                    
                    Text("Sign Up")
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
            }
            .padding(.bottom, 30)
            .foregroundStyle(Color(.systemOrange))

        }
        .ignoresSafeArea()
        .toolbar(.hidden) // navigationBarHidden(true)
    }
   
}

#Preview {
    LoginView()
}


/* Old Login View
 @State private var username = ""
 @State private var password = ""
 @State private var wrongUsername = 0
 @State private var wrongPassword = 0
 @State private var showingLoginScreen = false
 
 var body: some View {
     NavigationStack {
         ZStack {
             Color.orange
                 .ignoresSafeArea()
             Circle()
                 .scale(1.7)
                 .foregroundStyle(.white.opacity(0.15))
             Circle()
                 .scale(1.35)
                 .foregroundStyle(.white)
             
             VStack {
                 Text("Sign In")
                     .font(.largeTitle)
                     .bold()
                     .padding()
                 TextField("Username", text: $username)
                     .padding()
                     .frame(width: 320, height: 50)
                     .background(Color.black.opacity(0.08))
                     .clipShape(RoundedRectangle(cornerRadius: 10))
                     .border(Color.red, width: CGFloat(wrongUsername))
                 SecureField("Password", text: $password)
                     .padding()
                     .frame(width: 320, height: 50)
                     .background(Color.black.opacity(0.08))
                     .clipShape(RoundedRectangle(cornerRadius: 10))
                     .border(Color.red, width: CGFloat(wrongPassword))
                 Button("Login") {
                     // Authenticate User
                     authenticateUser(username: username, password: password)
                 }
                 .foregroundStyle(.white)
                 .frame(width: 320, height: 50)
                 .background(Color.orange)
                 .clipShape(RoundedRectangle(cornerRadius: 30))
                 
                 
                 NavigationLink(destination: Text("You're logged in @\(username)"), isActive: $showingLoginScreen) {
                     EmptyView()
                 }
             }
         }
     }
     
 }
 
 func authenticateUser(username: String, password: String) {
     
     if username.lowercased() == "ejder2024" {
         wrongUsername = 0
         
         if password.lowercased() == "ab123" {
             wrongPassword = 0
             showingLoginScreen = true
         } else {
             wrongPassword = 5 // border kalınlığı(kırmızı renk)
         }
     } else {
         wrongUsername = 5
     }
 }
 */
