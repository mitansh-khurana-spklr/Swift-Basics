import UIKit

class Employee{
    var name : String
    var empID : String
    var macBook : Macbook?
    
    init(inName: String, inEmpID: String){
        name = inName
        empID = inEmpID
    }
    deinit {
        print("Employee \(name) removed")
    }
}

class Macbook{
    var serialNumber: String
    weak var assinee: Employee?
    
    init(SNo: String){
        serialNumber = SNo
    }
    deinit {
        print("Macbook \(serialNumber) removed")
    }
}


var newEmployee : Employee? = Employee(inName: "Mitansh", inEmpID: "123")

var mac : Macbook? = Macbook(SNo: "2345")

newEmployee?.macBook = mac
mac?.assinee = newEmployee

newEmployee = nil
mac = nil
