//
//  Task1.swift
//  SwiftUITasks
//
//  Created by Bartosz Strzecha on 25/08/2025.
//

import SwiftUI

struct Task1: View {
    @State private var counter: Int = 0
    
    var body: some View {
        VStack(spacing: 12) {
            Text("Counter: \(counter)")
            Button("+1") {
                counter += 1
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    Task1()
}
