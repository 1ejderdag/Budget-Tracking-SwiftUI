//
//  CustomInputField.swift
//  Budget-Tracking-SwiftUI
//
//  Created by Ejder Dağ on 21.05.2024.
//

import SwiftUI

struct CustomInputField: View {
    let iconName: String
    let placeholderText: String
    var isSecured: Bool? = false
    @Binding var text: String
    
    var body: some View {

        VStack {
            HStack {
                Image(systemName: iconName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundStyle(Color(.darkGray))
                
                if isSecured ?? false {
                    SecureField(placeholderText, text: $text)
                } else {
                    TextField(placeholderText, text: $text)
                }
                
            }
            Divider()
                .background(Color(.darkGray))
        }
    }
}

#Preview {
    CustomInputField(iconName: "envelope", placeholderText: "Email", text: .constant(""))
}
