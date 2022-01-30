//
//  EmployeeListViewModel.swift
//  Employee
//
//  Created by Thunyathon  Jaruchotrattanasakul on 30/1/2565 BE.
//

import Foundation

class EmployeeListViewModel: ObservableObject {
    @Published var employees: [Employee] = []
    
    func fetchPeople() {
        URLSession.shared.dataTask(with: URL(string: "https://randomuser.me/api/?results=20")!, completionHandler: {
            data, res, error in
            DispatchQueue.main.async {
                self.employees = (try! JSONDecoder().decode(EmployeeResponse.self, from: data!)).results
            }
        }).resume()
    }
    
    
}

