//
//  ContentView.swift
//  SwiftUITasks
//
//  Created by Bartosz Strzecha on 07/08/2025.
//

import SwiftUI

struct Task1View: View {
    @State private var isGreetingShown = false
    
    var body: some View {
        VStack {
            Toggle(
                "Show Greeting",
                isOn: $isGreetingShown
            )
            if isGreetingShown {
                Text("Hello, SwiftUI!")
            }
        }
        .padding()
    }
}

#Preview {
    Task1View()
}
