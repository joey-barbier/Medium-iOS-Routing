//
//  ViewerCover.swift
//  AppTestCoordinator
//
//  Created by Orka on 11/01/2024.
//

import SwiftUI

extension Viewer {
    struct Cover: View {
        var channel: Channel
        var color: Color
        
        var body: some View {
            VStack(alignment: .leading) {
                Text("\(channel.name)")
                    .font(.title)
                
                Text("Mes viewers:")
                    .font(.subheadline)
                
                Divider()
                Viewer.List(viewers: channel.viewers)
                Spacer()
            }
            .background(color)
        }
    }
}

#Preview {
    Viewer.Cover(channel: Channel(name: "test", viewers: [Viewer(name: "toto")]), color: .blue)
}
