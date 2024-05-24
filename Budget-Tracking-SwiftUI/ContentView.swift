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
                HomeView()
            }
        }
    }
}
    
//#Preview {
//    ContentView()
//}


/*
 var mainInterface: some View {
     ZStack(alignment: .topLeading) {
         HomeView()
             .toolbar(profileMenu ? .hidden : .visible)
         
         if profileMenu {
             ZStack {
                 Color(.black)
                     .opacity(profileMenu ? 0.3 : 0.0)
             }
             .onTapGesture {
                 withAnimation(.easeInOut) {
                     profileMenu = false
                 }
             }
             .ignoresSafeArea()
         }
         
         ProfileView()
             .frame(width: 300)
             .offset(x: profileMenu ? 393 : -200, y: 0)
             .background(profileMenu ? Color.white : Color.clear)
     }
     .navigationTitle("Profile")
     .navigationBarTitleDisplayMode(.inline)
     .toolbar {
         ToolbarItem(placement: .topBarTrailing) {
             
             if let user = authViewModel.currentUser {
                 Button {
                     withAnimation(.easeInOut) {
                         profileMenu.toggle()
                     }
                 } label: {
                     Image(systemName: "person")
                         .frame(width: 35, height: 35)
                         .foregroundStyle(Color(.white))
                         .background(Color(.gray))
                         .clipShape(Circle())
                 }
             }
         }
     }
     .onAppear {
         profileMenu = false // toolbar tekrar açıldığında side menu kapalı olacak.
     }
 }
 */
