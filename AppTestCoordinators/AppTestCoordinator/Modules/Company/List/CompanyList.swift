//
//  CompanyList.swift
//  AppTestCoordinator
//
//  Created by Orka on 07/01/2024.
//

import SwiftUI

// MARK: - Variables
extension Company {
    struct List: View {
        @Selectables var companies: [Company]
    }
}

// MARK: - Body
extension Company.List {
    var body: some View {
        ForEach($companies.itemsSelectable, id: \.wrappedValue.id) { company in
            Company.Row(company: company)
            Divider()
        }
    }
}
