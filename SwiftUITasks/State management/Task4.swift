//
//  Task4.swift
//  SwiftUITasks
//
//  Created by Bartosz Strzecha on 25/08/2025.
//

import SwiftUI

@Observable
class UserProfile {
    var name: String = "Jane Doe"
    var email: String = "jane@example.com"
}

struct Task4: View {
    @State private var profile = UserProfile()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Name: \(profile.name)")
            Text("Email: \(profile.email)")
            
            Divider()
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Name")
                    .font(.caption)
                    .foregroundColor(.secondary)

                TextField("Enter name", text: $profile.name)
                    .textFieldStyle(.roundedBorder)
            }

            VStack(alignment: .leading, spacing: 8) {
                Text("Email")
                    .font(.caption)
                    .foregroundColor(.secondary)

                TextField("Enter email", text: $profile.email)
                    .textFieldStyle(.roundedBorder)
                    .textInputAutocapitalization(.never)
                    .keyboardType(.emailAddress)
            }
        }
        .padding()
    }
}

#Preview {
    Task4()
}
