//
//  Channel+OnTap.swift
//  AppTestCoordinator
//
//  Created by Orka on 13/01/2024.
//

import SwiftUI
import SwiftUIMacros

extension EnvironmentValues {
    @EnvironmentValue
    var onTapViewer: ((Viewer)->Void)?

    // or without macro:
    /*
     var onTapViewer: ((Viewer)->Void)? {
         get {
             self [EnvironmentKey_onTapViewer.self]
         }
         set {
             self [EnvironmentKey_onTapViewer.self] = newValue
         }
     }
     struct EnvironmentKey_onTapViewer: EnvironmentKey {
         static var defaultValue: ((Viewer) -> Void)?
     }
     */
}
