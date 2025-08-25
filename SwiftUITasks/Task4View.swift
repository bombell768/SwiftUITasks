//
//  Task4View.swift
//  SwiftUITasks
//
//  Created by Bartosz Strzecha on 07/08/2025.
//

import SwiftUI

struct Task4View: View {
    @State private var isDarkMode = false
    
    var body: some View {
        Toggle("Dark mode", isOn: $isDarkMode)
            .toggleStyle(.changingColor)
            .preferredColorScheme(isDarkMode ? .dark : .light)
    }
}

#Preview {
    Task4View()
}


struct ChangingColorToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.label
            
            Spacer()
            
            ZStack(alignment: configuration.isOn ? .trailing : .leading) {
                RoundedRectangle(cornerRadius: 16)
                    .fill(configuration.isOn ? Color.indigo : Color.gray)
                Circle()
                    .fill(Color.white)
                    .padding(3)
            }
            .frame(width: 50, height: 30)
            .contentShape(Rectangle())
            .onTapGesture {
                withAnimation(.easeInOut(duration: 0.2)) {
                    configuration.isOn.toggle()
                }
            }
        }
        .padding()
    }
}

extension ToggleStyle where Self == ChangingColorToggleStyle {
    static var changingColor: ChangingColorToggleStyle{ .init() }
}
