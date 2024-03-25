//
//  AppCompanyDetails.swift
//  AppTestCoordinator
//
//  Created by Orka on 13/01/2024.
//

import SwiftUI

extension App {
    struct TodoDetails: View {
        @State var todo: Todo
    }
}

extension App.TodoDetails {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Name: \(todo.name)")
                .font(.body)
            Toggle(isOn: $todo.done) {
                Text("State:")
                    .font(.body)
            }
            
            Spacer()
        }
        .padding()
        .navigationTitle("Details: \(todo.name)")
    }
}

#Preview {
    App.TodoDetails(todo: Todo(name: "Lorem ipsum"))
}
