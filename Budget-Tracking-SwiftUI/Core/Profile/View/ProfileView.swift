//
//  ProfileView.swift
//  Budget-Tracking-SwiftUI
//
//  Created by Ejder Dağ on 22.05.2024.
//

import SwiftUI

struct ProfileView: View {
    
    @EnvironmentObject var authViewModel: AuthViewModel
    @Environment(\.dismiss) var dismiss
    let user: User?
    
    var body: some View {
        
        if let user = authViewModel.currentUser {
            VStack(alignment: .leading, spacing: 10) {
                VStack(alignment: .leading) {
                        Circle()
                            .frame(width: 60, height: 60)
                            .foregroundStyle(Color(.systemBlue))
                        
                    Text(user.fullname)
                            .font(.headline)
                            .fontWeight(.bold)
                    
                    Divider()
                }
                .padding()
                
                ForEach(RowViewModel.allCases, id: \.rawValue) { rowViewModel in
                    
                    if rowViewModel == .add {
                        NavigationLink {
                            // go to add view
                        } label: {
                            ProfileRowView(viewModel: rowViewModel)
                        }
                    } else if rowViewModel == .logout {
                        Button {
                            authViewModel.signOut()
                            dismiss()
                        } label: {
                            ProfileRowView(viewModel: rowViewModel)
                        }
                    } else {
                        ProfileRowView(viewModel: rowViewModel)
                    }
                }
            }
            Spacer()
        }
    }
}

//#Preview {
//    ProfileView()
//}
