//
//  ViewerRow.swift
//  AppTestCoordinator
//
//  Created by Orka on 09/01/2024.
//

import SwiftUI

extension Viewer {
    struct Row: View {
        @Environment(\.onTapViewer) var onTap: ((Viewer) -> Void)?
        
        var viewer: Viewer
        var body: some View {
            Text("- \(viewer.name) ")
                .onTapGesture {
                    onTap?(viewer)
                }
        }
    }
}

#Preview {
    Viewer.Row(viewer: Viewer(name: "HmTici444"))
}
