//
//  EmployeeDetail.swift
//  Employee
//
//  Created by Thunyathon  Jaruchotrattanasakul on 30/1/2565 BE.
//

import SwiftUI

struct EmployeeDetailView: View {
    let employee: Employee

    var body: some View {
        VStack {
            AsyncImage(url: employee.picture.medium) { image in
                image.resizable()
            } placeholder: {
                Image("ProfilePlaceholder")
                    .resizable()
                    .scaledToFit()
            }
            .frame(width: 100, height: 100)
            .cornerRadius(50)
            .overlay(
                    RoundedRectangle(cornerRadius: 50)
                        .stroke(Color.white, lineWidth: 1)
                    )
            .shadow(radius: 5)
            .padding()
            Text("\(employee.name.first) \(employee.name.last)").fontWeight(.bold)
            Divider()
            HStack {
                Text("Gender")
                    .fontWeight(.bold)
                    .padding()
                Spacer()
                Text(employee.gender)
                    .padding()
            }
            HStack {
                Text("Email")
                    .fontWeight(.bold)
                    .padding()
                Spacer()
                Text(employee.email)
                    .padding()
            }
            HStack {
                Text("Phone")
                    .fontWeight(.bold)
                    .padding()
                Spacer()
                Text(employee.phone)
                    .padding()
            }
            HStack {
                Text("Region")
                    .fontWeight(.bold)
                    .padding()
                Spacer()
                Text(employee.nat)
                    .padding()
            }
            Spacer()
        }
        
    }
}

struct EmployeeDetailView_Preview: PreviewProvider {
    static var previews: some View {
        EmployeeDetailView(employee: Employee(name: Name(title: "MR.", first: "ABC", last: "DEC"), email: "abc@dec.com", nat: "TH", picture: Picture(thumbnail: URL(string: "https://randomuser.me/api/portraits/thumb/men/75.jpg")!, medium: URL(string: "https://randomuser.me/api/portraits/med/men/75.jpg")!), gender: "Male", phone: "092-283-7848"))
    }
}


