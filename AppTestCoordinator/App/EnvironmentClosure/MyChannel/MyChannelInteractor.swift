//
//  MyChannelInteractor.swift
//  AppTestCoordinator
//
//  Created by Orka on 13/01/2024.
//

import Foundation

extension App.MyChannel {
    struct Interactor {
        var coordinator: App.Coordinator
    }
}

extension App.MyChannel.Interactor {
    func routeToViewerDetails(_ viewer: Viewer) {
        coordinator.goTo(.viewerDetails(viewer: viewer))
    }
    
    func routeToViewerFav(_ viewer: Viewer) {
        coordinator.goTo(.viewerDetailsFav(viewer: viewer))
    }
}
