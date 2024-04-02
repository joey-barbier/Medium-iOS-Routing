//
//  ViewerList.swift
//  AppTestCoordinator
//
//  Created by Orka on 09/01/2024.
//

import SwiftUI

extension Viewer {
    struct List: View {
        var viewers: [Viewer]
        
        
        var body: some View {
            ForEach(viewers, id: \.id) { viewer in
                Viewer.Row(viewer: viewer)
                Divider()
            }
        }
    }
}

#Preview {
    Viewer.List(viewers: [
        Viewer(name: "HmTici444", isFav: true),
        Viewer(name: "ProfesseurWannabe", isFav: true)
    ])
}
