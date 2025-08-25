//
//  Task5.swift
//  SwiftUITasks
//
//  Created by Bartosz Strzecha on 25/08/2025.
//

import SwiftUI

@Observable
class FormModel {
    var username: String = ""
    
    var isValid: Bool {
        !username.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }
}

struct Task5: View {
    @State private var form = FormModel()
    @State private var submitMessage: String?
    
    var body: some View {
        VStack {
            Form {
                Section(header: Text("Account")) {
                    TextField("Username", text: $form.username)
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled()
                }
            }
            
            if let submitMessage {
                Text(submitMessage)
                    .foregroundStyle(.secondary)
            }
            
            Button("Submit") {
                form.username = form.username.trimmingCharacters(in: .whitespacesAndNewlines)
                submitMessage = "Submitted username: \(form.username)"
            }
            .buttonStyle(.borderedProminent)
            .disabled(!form.isValid)
            
            
        }
    }
}

#Preview {
    Task5()
}
