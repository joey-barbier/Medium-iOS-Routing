//
//  MyChannel.swift
//  AppTestCoordinator
//
//  Created by Orka on 09/01/2024.
//

import SwiftUI
import SwiftUIMacros

extension App {
    struct MyChannel: View {
        @Environment(App.Coordinator.self) private var coordinator
        
        let channelA = Channel(name: "Horka_TV",
                               viewers: [Viewer(name: "HmTici444"),
                                         Viewer(name: "ProfesseurWannabe")]
        )
        
        let channelB = Channel(name: "Orka_V2",
                               viewers: [Viewer(name: "iDevDroid"),
                                         Viewer(name: "Risitas")]
        )
        
        private var interactor: Interactor {
            Interactor(coordinator: coordinator)
        }
        
        var body: some View {
            ScrollView {
                VStack {
                    Viewer.Cover(channel: channelA, color: .red)
                        .environment(\.onTapViewer) { viewer in
                            interactor.routeToViewerDetails(viewer)
                        }
                    
                    Viewer.Cover(channel: channelB, color: .brown)
                        .environment(\.onTapViewer) { viewer in
                            interactor.routeToViewerFav(viewer)
                        }
                }
                .padding()
            }
        }
    }
}

#Preview {
    App.MyChannel()
}
