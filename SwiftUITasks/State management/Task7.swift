//
//  Task7.swift
//  SwiftUITasks
//
//  Created by Bartosz Strzecha on 25/08/2025.
//

import SwiftUI

@Observable
final class Counter {
    var value: Int = 0
}

struct Task7: View {
    @State private var sharedCounter = Counter()

    var body: some View {
        VStack(spacing: 24) {
            Text("Shared counter demo")
                .font(.headline)

            HStack(spacing: 24) {
                CounterPanel(title: "View A", buttonTitle: "+1 in A")
                CounterPanel(title: "View B", buttonTitle: "+1 in B")
            }
        }
        .padding()
        .environment(sharedCounter)
    }
}

struct CounterPanel: View {
    @Environment(Counter.self) private var counter
    let title: String
    let buttonTitle: String

    var body: some View {
        VStack(spacing: 12) {
            Text("\(title): \(counter.value)")
                .font(.title2)
            Button(buttonTitle) { counter.value += 1 }
                .buttonStyle(.borderedProminent)
        }
        .padding()
        .background(.thinMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

#Preview {
    Task7()
}
