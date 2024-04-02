//
//  AppMyCompaniesInteractor.swift
//  AppTestCoordinator
//
//  Created by Orka on 08/01/2024.
//

import Foundation

extension App.MyCompanies {
    struct Interactor {}
}

extension App.MyCompanies.Interactor {
    static func routeToDetails(company: Company) {
        App.Coordinator.shared.goTo(.companyDetails(company: company))
    }
}
