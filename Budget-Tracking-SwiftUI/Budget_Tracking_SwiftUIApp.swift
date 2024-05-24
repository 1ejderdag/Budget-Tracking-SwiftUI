//
//  Budget_Tracking_SwiftUIApp.swift
//  Budget-Tracking-SwiftUI
//
//  Created by Ejder Dağ on 23.03.2024.
//

import SwiftUI
import FirebaseCore

@main
struct Budget_Tracking_SwiftUIApp: App {
    
    @StateObject var authViewModel = AuthViewModel()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ContentView()
            }
            .environmentObject(authViewModel)
        }
    }
}
