//: [Previous](@previous)

import Foundation

protocol PrintValue{
    func getName() -> String
}

extension PrintValue{
    func sayHello(){
        print("Hello")
    }
}

struct AdoptProtocol: PrintValue{
    
    var name = "Mitansh"
    
    func getName() -> String{
        return name
    }
}

var newValue = AdoptProtocol()
print(newValue.getName())
newValue.sayHello()
