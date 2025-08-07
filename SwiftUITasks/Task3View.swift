//
//  Task3View.swift
//  SwiftUITasks
//
//  Created by Bartosz Strzecha on 07/08/2025.
//

import SwiftUI

struct Task3View: View {
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Circle()
                .fill(Color.indigo)
                .frame(width: 50)
            
            VStack(alignment: .leading) {
                Text("John Doe")
                    .font(.headline)
                Text("iOS Developer")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    Task3View()
}
