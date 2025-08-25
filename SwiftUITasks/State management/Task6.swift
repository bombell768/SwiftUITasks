//
//  Task6.swift
//  SwiftUITasks
//
//  Created by Bartosz Strzecha on 25/08/2025.
//

import SwiftUI

struct Setting: Identifiable {
    let id = UUID()
    var name: String
    var isOn: Bool
}

struct Task6: View {
    @State private var settings: [Setting] = [
        .init(name: "Notifications", isOn: true),
        .init(name: "Location Services", isOn: false),
        .init(name: "Dark Mode", isOn: false),
        .init(name: "Auto-Update", isOn: true)
    ]
    
    var body: some View {
        List($settings) { $setting in
            Toggle(setting.name, isOn: $setting.isOn)
        }
    }
}

#Preview {
    Task6()
}
