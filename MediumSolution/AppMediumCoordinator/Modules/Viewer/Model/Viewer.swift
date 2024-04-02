//
//  Viewer.swift
//  AppTestCoordinator
//
//  Created by Orka on 09/01/2024.
//

import Foundation

struct Viewer: Identifiable {
    var id = UUID()
    var name: String
    var isFav: Bool
}

extension Viewer: Hashable {
    static func == (lhs: Viewer, rhs: Viewer) -> Bool {
        lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
