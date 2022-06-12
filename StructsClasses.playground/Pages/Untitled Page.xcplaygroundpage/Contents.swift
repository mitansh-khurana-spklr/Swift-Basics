import UIKit

class Student{
    var name: String
    var age: Int = 18
    
    init(){
        name = "Mitansh"
    }
    
    init(name: String, age: Int){
        self.name = name
        self.age = age
    }
  
//    Delegation not possible
    
//    init(myName: String){
//        self.init(name: myName, age: 20)
//    }
    
    
//    init(myName: String){
//        name = myName
//        age = 20
//    }
    
    convenience init(myName: String){
        self.init(name: myName, age: 20)
    }
}

extension Student{
    // No designated only convenience
}


struct Car{
    var model: String = "Honda"
    var year: Int = 2021
    
    init(){}
    
    init(model: String){
        self.model = model
    }
}

extension Car{
    init(year: Int){
        self.year = year
    }
}
