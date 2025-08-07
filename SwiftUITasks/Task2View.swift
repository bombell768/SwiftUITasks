//
//  Task2View.swift
//  SwiftUITasks
//
//  Created by Bartosz Strzecha on 07/08/2025.
//

import SwiftUI

struct Task2View: View {
    private var names = [
        "Walter",
        "Skyler",
        "Jesse",
        "Gustavo",
        "Hank"
    ]
    
    var body: some View {
        List(names, id: \.self) { name in
            HStack {
                Text(name)
                Spacer()
                Button("Tap") {
                    print("\(name)")
                }
                .buttonStyle(.borderedProminent)
            }
        }
    }
}

#Preview {
    Task2View()
}
