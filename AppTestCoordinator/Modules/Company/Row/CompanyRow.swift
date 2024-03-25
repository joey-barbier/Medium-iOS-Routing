//
//  CompanyRow.swift
//  AppTestCoordinator
//
//  Created by Orka on 07/01/2024.
//

import SwiftUI

// MARK: - Variables
extension Company {
    struct Row: View {
        @Selectable var company: Company
    }
}

// MARK: - Body
extension Company.Row {
    var body: some View {
        HStack {
            Text(company.name)
            Spacer()
        }
        .onTapGesture {
            $company.send(company)
        }
    }
}
