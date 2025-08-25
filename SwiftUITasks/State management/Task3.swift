//
//  Task3.swift
//  SwiftUITasks
//
//  Created by Bartosz Strzecha on 25/08/2025.
//

import SwiftUI

struct Task3: View {
    @State private var isOn: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Parent state: \(isOn ? "ON" : "OFF")")
                .font(.headline)
            ChildView(isOn: $isOn)
        }
        .padding()
    }
}

struct ChildView: View {
    @Binding var isOn: Bool
    
    var body: some View {
        Toggle("Child Toggle", isOn: $isOn)
    }
}

#Preview {
    Task3()
}
