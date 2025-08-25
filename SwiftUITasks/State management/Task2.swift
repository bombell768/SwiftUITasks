//
//  Task2.swift
//  SwiftUITasks
//
//  Created by Bartosz Strzecha on 25/08/2025.
//

import SwiftUI

struct Task2: View {
    @State private var isLabelShown: Bool = false
    
    var body: some View {
        VStack {
            Toggle("Show label", isOn: $isLabelShown)
            if isLabelShown {
                Text("Hello, SwiftUI!")
            }
        }
        .padding()
    }
}

#Preview {
    Task2()
}
