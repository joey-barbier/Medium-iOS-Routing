//
//  ViewerDetails.swift
//  AppTestCoordinator
//
//  Created by Orka on 09/01/2024.
//

import SwiftUI

extension App {
    struct ViewerDetails: View {
        var viewer: Viewer
        
        var body: some View {
            HStack {
                VStack(alignment: .leading) {
                    Text("Details: ")
                    Viewer.Row(viewer: viewer)
                    
                    Spacer()
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("Details")
        }
    }
}

#Preview {
    App.ViewerDetails(viewer: Viewer(name: "Ok", isFav: true))
}

class Interactor {
    private unowned var output: Output
    
    init(_ output: Output) {
        self.output = output
    }
    
    func start() {
        Timer.scheduledTimer(withTimeInterval: 3, repeats: true) { _ in
            print("output: \(self.output.hello)")
        }
    }
}

class Output {
    var hello = "Yo"
}
