//
//  ContentView.swift
//  Budget-Tracking-SwiftUI
//
//  Created by Ejder Dağ on 23.03.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var profileMenu = false
    @EnvironmentObject var authViewModel: AuthViewModel
    
    var body: some View {
        Group {
            
            if authViewModel.userSession == nil {
                // giriş yapmış kullanıcı yok
                LoginView()
            } else {
                // giriş yapmış kullanıcı var
                if let user = authViewModel.currentUser {
                    HomeView()
                        .toolbar(.visible)
                }
            }
        }
    }
}
    
//#Preview {
//    ContentView()
//}

