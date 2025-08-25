//
//  Task5View.swift
//  SwiftUITasks
//
//  Created by Bartosz Strzecha on 07/08/2025.
//

import SwiftUI

struct Task5View: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            CardView(title: "User info") {
                VStack(alignment: .leading) {
                    Text("Name: Jane Doe")
                    Text("Age: 25")
                }
            }
            CardView(title: "Profile") {
                HStack {
                    VStack {
                        Text("Followers")
                        Text("1.2k")
                            .bold()
                    }
                    .frame(maxWidth: .infinity)
                    
                    VStack {
                        Text("Posts")
                        Text("87")
                            .bold()
                    }
                    .frame(maxWidth: .infinity)
                    
                    VStack {
                        Text("Likes")
                        Text("46 547")
                            .bold()
                    }
                    .frame(maxWidth: .infinity)
                }
            }
            
            CardView(title: "About") {
                Text(
                     """
                     Lorem ipsum dolor sit amet, consectetur adipiscing elit. \
                     Sed quis pretium lacus. Nam ac erat dapibus, pellentesque \
                     dolor a, egestas.
                     """
                )
            }
        }
        .padding()
    }
}

#Preview {
    Task5View()
}

struct CardView<Content: View>: View {
    let title: String
    @ViewBuilder var content: () -> Content
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title)
                .font(.headline)
                .padding(.bottom, 4)
            Divider()
            content()
        }
        .padding()
        .background(Color(.secondarySystemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
        .shadow(radius: 5)
    }
}
