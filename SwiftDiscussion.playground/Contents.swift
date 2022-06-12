import UIKit
import Darwin

// Variables
var variableName = "Mitansh"
variableName = "Khurana"


// Constants
let constantAge = 20


// Printing
print(constantAge)


// Specifying Types
let doubleNumber : Double = 10


// Tuple
let myTuple = (20, "Mitansh")
print(myTuple.0)
let (myAge, myName) = myTuple


// Optionals
var optionalNumber1 : Int? = 100
optionalNumber1 = nil
let optionalNumber2 = Int("12")
print(optionalNumber2!)   // Forced unwrapping


// Assertions and Preconditions
assert(myAge >= 0, "Age must be positive")
precondition(myAge >= 0, "Age must be positive")


// Operators
// Addition, string concat -> +
// Subtraction -> -
// Multiplication, division -> * , /
// Remainder -> %
// Unary minus, plus -> - , +
// Assignment operator (doesnt return true false) -> =
// Comparison -> ==, !=, <, <=, >, >=
// Prevents overflow


// Ternary operator
let canDrive = (myAge >= 18) ? true : false

// Nil-coalescing operator
let numberValue = optionalNumber1 ?? 10

// Range operator
for index in 1...5{
    print(index)
}


// Strings and multiline strings
let string1 = "Hello Mitansh"
let string2 = """
Hello, how
are you?
"""

// Escape characters and variables
print("Hello \(myName)")

// Cannot access string characters by numeric literals directly
let char = string1[string1.startIndex]


// Arrays
var newArray : [Int] = []
newArray.append(10)
newArray += [10, 20, 30]

// Sets
var newSet = Set<Int>()
newSet.insert(1)
newSet.contains(2)
// Can use intersection, union, etc

// Dictionaries
var newDict : [String:Int] = [:]
newDict["abc"] = 1


// Control flow (for-in, while, switch)
for (key, value) in newDict{
    print(key, value)
}

var count = 3
while count > 0{
    count -= 1
}

count = 10
switch count{
case 1:
    print("Count was \(count)")
case 2,3,4:
    print("Count was \(count)")
case 5...9:
    print("Count was \(count)")
default:
    print("Count was \(count)")
}


// Functions
func myFirstFunction(name: String) -> String{
    return ("Hello " + name)
}
myFirstFunction(name: "Mitansh")


// Argument vs Parameter
func greetAgain(person: String, from hometown: String) -> String {
    return "Hello \(person)!  Glad you could visit from \(hometown)."
}
print(greetAgain(person: "Bill", from: "Cupertino"))


// Closures (Reference types)
let sumClosure1 = {(a: Int, b:Int) -> Int in
    return a + b
}

let sumClosure2 : (Int, Int) -> Int = {(a,b) in
    return a + b
}


// Trailing and normal closures
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


// Capturing values
func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

let incrementTen = makeIncrementer(forIncrement: 10)
incrementTen()


// Enumerations
enum CompassPoint{
    case north
    case south
    case east
    case west
}

var direction = CompassPoint.north
switch direction{
case .north:
    print("Pointing north")
case .south:
    print("Pointing south")
case .east:
    print("Pointing east")
case .west:
    print("Pointing west")
}


// Structures and Classes
// Structures - value types
// Classes - reference types
struct Reactange{
    var height = 0;     // Stored Properties
    var width = 0;
    var area : Int {    // Computed Properties
        get{
            return height * width
        }
        // Optional set
    }
}

class Counter {
    var count = 0
    func increment() {                  // Method
        count += 1
    }
    func increment(by amount: Int) {    // Method
        count += amount
    }
    func reset() {                      // Method
        count = 0
    }
    
    // static methods/properties
}

// Mutating Function
// Type properties and methods


// Inheritance
class Person{
    var name = "Mitansh"
    final var age = 18 // Final concept
    
    func getName() -> String{
        return name
    }
}

class Student: Person{
    var studentId = 3382
    
    override func getName() -> String {// Override concept
        return ("Hello " + name)
    }
}


// Access Control
// Open
// Public
// Internal - Default
// File Private
// Private

public class SomePublicClass {}
internal class SomeInternalClass {}
fileprivate class SomeFilePrivateClass {}
private class SomePrivateClass {}

public var somePublicVariable = 0
internal let someInternalConstant = 0
fileprivate func someFilePrivateFunction() {}
private func somePrivateFunction() {}


// Initialisers
struct Fahrenheit {
    var temperature: String = "72"
    var isCold : Bool?
    
    init(){}
    init(currentTemp: String) {
        temperature = currentTemp
    }
}
var f = Fahrenheit(currentTemp: "28")


// Designated and Convenience Initialisers
class Food {
    var name: String
    init(name: String) {
        self.name = name
    }
    convenience init() {
        self.init(name: "[Unnamed]")
    }
}


// Failable initialisers
class Product {
    let name: String
    init?(name: String) {
        if name.isEmpty { return nil }
        self.name = name
    }
}

// Deinitialisers
// Example


// Error Handling
// Enum can be used
enum VendingMachineError: Error {
    case invalidSelection
    case insufficientFunds(coinsNeeded: Int)
    case outOfStock
}

// Throwing function
func errorThrowingFunction() throws -> Int{
    // throw VendingMachineError.invalidSelection
    // throw VendingMachineError.outOfStock
    return 10
}

// Do catch
do{
    try errorThrowingFunction()
    print("Works well")
} catch VendingMachineError.invalidSelection {
    // Handle
} catch VendingMachineError.outOfStock {
    // Handle
} catch {
    // Handle rest of the errors
}

// Errors to optional values
let returnedOptionalValue = try? errorThrowingFunction()

// Use defer for cleanup



// Concurrency
// Includes asynchronous code and parallel processing

/*

func asynchronousFunction() async -> String{
    return "Hello"
}

Task {
    let asyncResult = await asynchronousFunction()
}


// Parallel Processing

Task{
    async let asyncParallelResult1 = asynchronousFunction()
    async let asyncParallelResult2 = asynchronousFunction()
    let newArray = await [asyncParallelResult1,asyncParallelResult2]
}
 
 */



// Extensions
extension Product{
    var isGood : Bool {
        return true
    }
}


// Protocols
protocol FullyNamed {
    var fullName: String { get }    // Properties - get, set
    func getFullName() -> String    // Methods
    
}

struct NewPerson: FullyNamed {
    var fullName: String
    func getFullName() -> String {
        return fullName
    }
}

// Initialisers, Failable Initialisers
// Synthesized implementation - Equatable, Hashable, Comparable
// Optional protocol requirements??


// Generics
func swapTwoValues<T>(_ a: inout T, _ b: inout T) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var someInt = 3
var anotherInt = 107
swapTwoValues(&someInt, &anotherInt)

var someString = "hello"
var anotherString = "world"
swapTwoValues(&someString, &anotherString)



// Automatic Reference Counting
class AdultPerson {
    let name: String
    init(name: String) { self.name = name }
    var apartment: Apartment?
    deinit { print("\(name) is being deinitialized") }
}

class Apartment {
    let unit: String
    init(unit: String) { self.unit = unit }
    var tenant: AdultPerson?    // Make weak reference
    deinit { print("Apartment \(unit) is being deinitialized") }
}

// Strong reference cycle
var john: AdultPerson? = AdultPerson(name: "John Appleseed")
var unit4A: Apartment? = Apartment(unit: "4A")

john!.apartment = unit4A
unit4A!.tenant = john

//john = nil
//unit4A = nil

// Unowned reference


