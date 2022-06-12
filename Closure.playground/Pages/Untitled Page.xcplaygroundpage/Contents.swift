import UIKit


// Closure expressions (2 ways of writing)
let sumClosure1 = {(a: Int, b:Int) -> Int in
    return a + b
}

let sumClosure2 : (Int, Int) -> Int = {(a,b) in
    return a + b
}


// Trailing Closure Syntax
func sayHello(to name: String, sayFunction: (String) -> Void){
    let myName = name.uppercased()
    sayFunction(myName)
}

sayHello(to: "Mitansh", sayFunction: {name in
    print("Hello \(name)")
})

sayHello(to: "Mitansh"){ name in
    print("Hello \(name)")
}


// Capturing Values
func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

let incrementTen = makeIncrementer(forIncrement: 10)
print(incrementTen())
print(incrementTen())
print(incrementTen())


