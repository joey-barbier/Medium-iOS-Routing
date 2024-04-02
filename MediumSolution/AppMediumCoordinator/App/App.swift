//
//  AppTestCoordinatorApp.swift
//  AppTestCoordinator
//
//  Created by Orka on 07/01/2024.
//

import SwiftUI

@main
struct App: SwiftUI.App {
    @Bindable private var coordinator = Coordinator() // Closure Environment
    
    @State private var isDisplayed = false
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $coordinator.path) {
                App.MyChannel()
                    .navigationDestination(for: Coordinator.NavigationItem.self) { item in
                        item.getView
                    }
                    .navigationTitle("Closure Environment")
                    .environment(\.onTapViewer) { viewer in
                        print("default action for `onTapViewer`")
                    }
            }
            .environment(coordinator)
        }
    }
}
