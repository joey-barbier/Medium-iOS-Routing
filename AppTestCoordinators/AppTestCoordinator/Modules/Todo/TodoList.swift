//
//  TodoList.swift
//  AppTestCoordinator
//
//  Created by Orka on 13/01/2024.
//

import SwiftUI

extension Todo {
    struct List: View {
        var todos: Todos
        var body: some View {
            ForEach(todos, id: \.id) { item in
                Todo.Row(todo: item)
                Divider()
            }
        }
    }
}

#Preview {
    Todo.List(todos: [Todo(name: "TestA"), 
                      Todo(name: "TestB")]
    )
}
