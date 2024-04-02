//
//  ViewerDetails.swift
//  AppTestCoordinator
//
//  Created by Orka on 09/01/2024.
//

import SwiftUI

extension App {
    struct ViewerDetailsFav: View {
        var viewer: Viewer
        
        var body: some View {
            HStack {
                VStack(alignment: .leading) {
                    Text("Favoris: ")
                    Viewer.Row(viewer: viewer)
                    
                    Spacer()
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("Favoris")
        }
    }
}

#Preview {
    App.ViewerDetailsFav(viewer: Viewer(name: "Ok", isFav: true))
}
