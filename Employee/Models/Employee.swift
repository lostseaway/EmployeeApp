//
//  Employee.swift
//  Employee
//
//  Created by Thunyathon  Jaruchotrattanasakul on 30/1/2565 BE.
//

import Foundation

struct EmployeeResponse: Codable {
    let results: [Employee]
}

struct Employee: Codable, Identifiable {
    let id = UUID()
    let name: Name
    let email: String
    let nat: String
    let picture: Picture
    let gender: String
    let phone: String
}

struct Name: Codable {
    let title: String
    let first: String
    let last: String
}

struct Picture: Codable {
    let thumbnail: URL
    let medium: URL
}

