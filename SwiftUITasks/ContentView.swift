//
//  ContentView.swift
//  SwiftUITasks
//
//  Created by Bartosz Strzecha on 07/08/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Task 1") {
                    Task1View()
                }
                NavigationLink("Task 2") {
                    Task2View()
                }
                NavigationLink("Task 3") {
                    Task3View()
                }
                NavigationLink("Task 4") {
                    Task4View()
                }
                NavigationLink("Task 5") {
                    Task5View()
                }
                NavigationLink("Task 6") {
                    Task6View()
                }
                NavigationLink("Task 7") {
                    Task7View(user: User(name: "Jane Doe", age: 29, location: "New York", isPremium: true))

                    Task7View(user: User(name: "John Smith", age: 34, location: "San Francisco", isPremium: false))
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
