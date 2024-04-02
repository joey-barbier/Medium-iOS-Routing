//
//  AppCompanyDetails.swift
//  AppTestCoordinator
//
//  Created by Orka on 07/01/2024.
//

import SwiftUI

extension App {
    struct CompanyDetails: View {
        var company: Company
        
        var body: some View {
            Text("Company selected: \(company.name)")
        }
    }
}

#Preview {
    App.CompanyDetails(company: Company.first)
}
