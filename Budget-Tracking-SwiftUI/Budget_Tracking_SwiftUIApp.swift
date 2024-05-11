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
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            AddView(transactionVM: TransactionViewModel())
        }
    }
}
