//
//  Channel.swift
//  AppTestCoordinator
//
//  Created by Orka on 09/01/2024.
//

import Foundation

struct Channel {
    var id = UUID()
    var name: String
    var viewers: [Viewer] = []
}
