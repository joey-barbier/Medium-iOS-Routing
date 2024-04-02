//
//  AppCoordinator.swift
//  AppTestCoordinator
//
//  Created by Orka on 08/01/2024.
//

import SwiftUI

extension App {
    @Observable class Coordinator {
        static var shared = Coordinator()
        var path = [NavigationItem]()
        
        func goTo(_ item: NavigationItem) {
            Task { @MainActor in
                path.append(item)
            }
        }
    }
}

extension App.Coordinator {
    enum NavigationItem: Hashable, Sendable {
        case myChannel
        case viewerDetails(viewer: Viewer)
        case viewerDetailsFav(viewer: Viewer)
        
        @ViewBuilder
        var getView: some View {
            switch self {
            case .myChannel:
                App.MyChannel()
            case .viewerDetails(viewer: let viewer):
                App.ViewerDetails(viewer: viewer)
            case .viewerDetailsFav(viewer: let viewer):
                App.ViewerDetailsFav(viewer: viewer)
            }
        }
    }
}
