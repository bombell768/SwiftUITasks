//
//  Task6View.swift
//  SwiftUITasks
//
//  Created by Bartosz Strzecha on 07/08/2025.
//

import SwiftUI

struct Task6View: View {
    @State private var groceries: [Product] = [
        Product(name: "Honey", isEnabled: true),
        Product(name: "Chocolate", isEnabled: false),
        Product(name: "Milk", isEnabled: false),
        Product(name: "Bananas", isEnabled: true),
        Product(name: "Strawberries", isEnabled: false)
    ]
    
    var body: some View {
        List {
            ForEach($groceries) { $product in
                HStack {
                    Text(product.name)
                    Spacer()
                    Toggle("", isOn: $product.isEnabled)
                        .labelsHidden()
                }
            }
        }
    }
}

#Preview {
    Task6View()
}


struct Product: Identifiable {
    let id = UUID()
    let name: String
    var isEnabled: Bool
}
