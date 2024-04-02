//
//  Todo.swift
//  AppTestCoordinator
//
//  Created by Orka on 13/01/2024.
//

import Foundation

typealias Todos = [Todo]
@Observable
class Todo {
    var id = UUID()
    var name: String
    var done: Bool = false
    
    init(id: UUID = UUID(), name: String, done: Bool = false) {
        self.id = id
        self.name = name
        self.done = done
    }
}

extension Todo: Identifiable {}
extension Todo: Hashable {
    static func == (lhs: Todo, rhs: Todo) -> Bool {
        lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
