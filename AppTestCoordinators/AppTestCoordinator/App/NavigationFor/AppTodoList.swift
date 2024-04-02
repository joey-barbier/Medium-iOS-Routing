//
//  AppCompanyList.swift
//  AppTestCoordinator
//
//  Created by Orka on 13/01/2024.
//

import SwiftUI

extension App {
    struct MyTodo: View {
        var todos: Todos = [
            .init(name: "Lorem ipsum"),
            .init(name: "Dolor item", done: true),
            .init(name: "Ipsum itamet", done: true),
            .init(name: "Item Dolor It"),
        ]
    }
}

extension App.MyTodo {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Todo.List(todos: todos)
            }
        }
        .padding()
        .navigationDestination(for: Todo.self) { todo in
            App.TodoDetails(todo: todo)
        }
    }
}

#Preview {
    App.MyTodo()
}
