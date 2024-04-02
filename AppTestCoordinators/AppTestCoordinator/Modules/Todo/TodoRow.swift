//
//  TodoRow.swift
//  AppTestCoordinator
//
//  Created by Orka on 13/01/2024.
//

import SwiftUI

extension Todo {
    struct Row: View {
        var todo: Todo
        var body: some View {
            let state = todo.done ? "done" : "todo"
            NavigationLink(value: todo) {
                Text("Todo: \(todo.name) | State: \(state)")
            }
        }
    }
}

#Preview {
    Todo.Row(todo: Todo(name: "clean"))
}
