//
//  ChannelRow.swift
//  AppTestCoordinator
//
//  Created by Orka on 09/01/2024.
//

import SwiftUI

extension Channel {
    struct Row: View {
        var channel: Channel
        var body: some View {
            Text("\(channel.name)!")
        }
    }
}

#Preview {
    Channel.Row(channel: Channel(name: "Orka"))
}
