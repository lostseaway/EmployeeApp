//
//  EmployeeListView.swift
//  Employee
//
//  Created by Thunyathon  Jaruchotrattanasakul on 30/1/2565 BE.
//

import SwiftUI

struct EmployeeListView: View {
    @ObservedObject var viewModel: EmployeeListViewModel
    #if DEBUG
        init(viewModel: EmployeeListViewModel = EmployeeListViewModel()) {
            self.viewModel = viewModel
        }
    #endif

    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(viewModel.employees) { employee in
                        NavigationLink(destination: EmployeeDetailView(employee: employee), label: {
                            EmployeeRow(employee: employee)
                        })
                    }
                }
               
            }
            .navigationTitle("Employee List")
        }.onAppear(perform: {
            viewModel.fetchPeople()
        })
    }
}

struct EmployeeRow: View {
    let employee: Employee
    var body: some View {
        HStack {
            AsyncImage(url: employee.picture.thumbnail){ image in
                image.resizable()
            } placeholder: {
                Image("ProfilePlaceholder")
                    .resizable()
                    .scaledToFit()
            }
            .frame(width: 64, height: 64)
            .cornerRadius(32)
            .overlay(
                    RoundedRectangle(cornerRadius: 32)
                        .stroke(Color.white, lineWidth: 1)
                    )
            .shadow(radius: 5)
            .padding()
                
            Text(employee.name.first)
        }
    }
}

struct EmployeeListView_Previews: PreviewProvider {
    static var previews: some View {
        EmployeeListView()
    }
}


