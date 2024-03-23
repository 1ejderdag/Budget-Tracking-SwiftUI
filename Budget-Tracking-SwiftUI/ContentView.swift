//
//  ContentView.swift
//  Budget-Tracking-SwiftUI
//
//  Created by Ejder Dağ on 23.03.2024.
//

import SwiftUI

struct ContentView: View {
    
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
                    Text("Login")
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
}



#Preview {
    ContentView()
}
