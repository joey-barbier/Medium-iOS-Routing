//
//  Company.swift
//  AppTestCoordinator
//
//  Created by Orka on 07/01/2024.
//

import Foundation

// MARK: - MODEL
final class Company: Identifiable, Sendable {
    let id: UUID
    let name: String

    init(name: String) {
        self.id = UUID()
        self.name = name
    }
}

// MARK: - Hashable
extension Company: Hashable {
    static func == (lhs: Company, rhs: Company) -> Bool {
        lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

// MARK: - Example values
extension Company {
    static var all: [Company] = [
        .init(name: "Apple"),
        .init(name: "Facebook"),
        .init(name: "Orka"),
        .init(name: "Google"),
    ]
    static var first = Company(name: "Alone")
}
