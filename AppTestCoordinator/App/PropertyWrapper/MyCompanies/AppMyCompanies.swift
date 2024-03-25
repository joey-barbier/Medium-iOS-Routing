//
//  MyCompanies.swift
//  AppTestCoordinator
//
//  Created by Orka on 07/01/2024.
//

import SwiftUI

extension App {
    struct MyCompanies: View {
        @Selectables private var companies: [Company]
        @Selectable private var company: Company

        init() {
            // example with Array: [Company]
            _companies = Selectables(Company.all)
            _companies.onTap { company in
                Interactor.routeToDetails(company: company)
            }
            
            // example with Item: Company
            _company = Selectable(Company.first)
            _company.onTap { company in
                Interactor.routeToDetails(company: company)
            }
        }
    }
}

extension App.MyCompanies {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                companiesList
                Divider()
                
                companiesNotSelectable
                Divider()
                
                companyFav
                Divider()
                
                Spacer()
            }
            .padding()
        }
    }
    
    var companiesList: some View {
        VStack(alignment: .leading) {
            Text("Test selectables")
                .font(.title)
                .padding(.bottom)
            Company.List(companies: $companies)
        }
    }
    
    var companiesNotSelectable: some View {
        VStack(alignment: .leading) {
            Text("Test not selectables")
                .font(.title)
                .padding(.bottom)
            Company.List(companies: .notSelectable(companies))
        }
    }
    
    var companyFav: some View {
        VStack(alignment: .leading) {
            Text("Test item selectable")
                .font(.title)
                .padding(.bottom)
            Company.Row(company: $company)
        }
    }
}

#Preview {
    App.MyCompanies()
}
