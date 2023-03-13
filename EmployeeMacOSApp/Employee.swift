//
//  Employee.swift
//  EmployeeMacOSApp
//
//  Created by Rushikesh Potdar on 09/03/23.
//

import Foundation

struct Employee{
    let name : String
    let empId : Int
    let salary : Double
    let designation : String
    
    static func getDummyEmployees()->[Employee]{
        let emp1 = Employee(name: "Rushikesh", empId: 1015028, salary: 25800.00, designation: "Trainee (iOS Developer)")
        let emp2 = Employee(name: "Shubham", empId: 1015023, salary: 25800.00, designation: "Java Developer")
        let emp3 = Employee(name: "Anuja", empId: 1015022, salary: 25800.00, designation: "Data Scientist")
        let emp4 = Employee(name: "Sanjeevni", empId: 1015030, salary: 25800.00, designation: "Andriod Developer")
        let emp5 = Employee(name: "Rushikesh", empId: 1015028, salary: 25800.00, designation: "Trainee (iOS Developer)")
        let emp6 = Employee(name: "Shubham", empId: 1015023, salary: 25800.00, designation: "Java Developer")
        let emp7 = Employee(name: "Anuja", empId: 1015022, salary: 25800.00, designation: "Data Scientist")
        let emp8 = Employee(name: "Sanjeevni", empId: 1015030, salary: 25800.00, designation: "Andriod Developer")
        let emp9 = Employee(name: "Rushikesh", empId: 1015028, salary: 25800.00, designation: "Trainee (iOS Developer)")
        let emp10 = Employee(name: "Shubham", empId: 1015023, salary: 25800.00, designation: "Java Developer")
        let emp11 = Employee(name: "Anuja", empId: 1015022, salary: 25800.00, designation: "Data Scientist")
        let emp12 = Employee(name: "Sanjeevni", empId: 1015030, salary: 25800.00, designation: "Andriod Developer")
        return [emp1, emp2, emp3, emp4, emp5, emp6, emp7, emp8, emp9, emp10, emp11, emp12, emp1, emp2, emp3, emp4, emp5, emp6, emp7, emp8, emp9, emp10, emp11, emp12]
    }
}
