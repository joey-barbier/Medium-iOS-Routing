//
//  AppTestCoordinatorApp.swift
//  AppTestCoordinator
//
//  Created by Orka on 07/01/2024.
//

import SwiftUI

@main
struct App: SwiftUI.App {
    @State private var navigationPath = NavigationPath() // for Navigation(for:)
    @Bindable private var coordinatorPW = Coordinator.shared // for @PropertyWrapper
    @Bindable private var coordinatorCE = Coordinator() // Closure Environment
    
    @State private var isDisplayed = false
    
    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationStack(path: $navigationPath) {
                    App.MyTodo()
                        .navigationTitle("Navigation(for:)")
                }
                .tabItem {
                    Label("Navigation(for:)", systemImage: "rectangle.portrait.and.arrow.forward")
                }
                
                NavigationStack(path: $coordinatorPW.path) {
                    App.MyCompanies()
                        .navigationDestination(for: Coordinator.NavigationItem.self) { item in
                            item.getView
                        }
                        .navigationTitle("@PropertyWrapper")
                }
                .tabItem {
                    Label("@PropertyWrapper", systemImage: "doc.zipper")
                }
                
                NavigationStack(path: $coordinatorCE.path) {
                    App.MyChannel()
                        .navigationDestination(for: Coordinator.NavigationItem.self) { item in
                            item.getView
                        }
                        .navigationTitle("Closure Environment")
                        .environment(\.onTapViewer) { viewer in
                            print("ooooo")
                        }
                }
                .environment(coordinatorCE)
                .tabItem {
                    Label("Closure Environment", systemImage: "lasso")
                }
            }
        }
    }
}
