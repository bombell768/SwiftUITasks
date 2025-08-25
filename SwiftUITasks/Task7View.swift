//
//  Task7View.swift
//  SwiftUITasks
//
//  Created by Bartosz Strzecha on 07/08/2025.
//

import SwiftUI

struct Task7View: View {
    let user: User
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(user.name)
                .font(.title)
                .bold()
            Text("Age: \(user.age)")
                .font(.subheadline)
            Text("Location: \(user.location)")
                .font(.subheadline)
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(.systemGray6))
        .cornerRadius(20)
        .overlay(alignment: .topTrailing) {
            if user.isPremium {
                Text("💸 Premium")
                    .font(.footnote)
                    .bold()
                    .padding(8)
                    .background(Color.yellow)
                    .foregroundColor(.black)
                    .clipShape(Capsule())
                    .padding([.top, .trailing], 24)
            }
        }
    }
}

#Preview {
    Task7View(user: User(name: "Jane", age: 32, location: "USA", isPremium: true))
}

struct User {
    let name: String
    let age: Int
    let location: String
    let isPremium: Bool
}
