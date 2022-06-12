import UIKit

// Constants and variables
var helloGreeting = "Hello, playground"
let constant = "Mitansh"
//var temp :
//constant = "hehhe"
print(helloGreeting)


// Type conversion
let age = String(23)
print(age)


// Tuple (Can have different values as well)
let myTuple = (20, "Mitansh")
print(myTuple.0)
print(myTuple.1)
let (myAge, name) = myTuple


// Optionals
var optionalNumber : Int? = 400
print(optionalNumber!) // Forced unwrappping
var optionalNumber2 = Int("hshshs")
print(optionalNumber2)


// Assertions and preconditions
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

// Ternary operator
let canDrive = (myAge >= 18) ? true : false

// Nil-coalescing operator
let numberValue = optionalNumber ?? 10

// Range operator
print(1...5)
print(1..<5)

// Logical Operators
// !, &&, \\


// Multiline string
let multilineString = """
Hello how
Are you
"""
print(multilineString)


// Adding variables or escape chars in string
print("Hey how are you \(name)")

// To ignore variables and escape chars
print(#"Hey how are you \(name)"#)

// Concat strings
var string1 = "Mitansh"
let string2 = "Khurana"
let char1 : Character = "1"
print(string1 + string2)
print(string1.append(char1))


// Counting characters
print(string1.count)




// Accessing indexes in strings
let greeting = "Guten Tag!"
greeting[greeting.startIndex]
greeting[greeting.index(before: greeting.endIndex)]
greeting[greeting.index(after: greeting.startIndex)]
let index = greeting.index(greeting.startIndex, offsetBy: 7)
greeting[index]


// Inserting Characters
var welcome = "hello"
welcome.insert("!", at: welcome.endIndex)
welcome.insert(contentsOf: " there", at: welcome.index(before: welcome.endIndex))


// hasSuffix, hasPrefix
welcome.hasSuffix("is")


// Arrays
// Empty array
let newArray : [Int] = []

// Array with default value
var threeDoubles = Array(repeating: 0.0, count: 3)

// Adding elements
threeDoubles.append(10.0)
threeDoubles += [20.0, 30.0]

threeDoubles[0]

// Updating range of values
threeDoubles[1...3] = [5.1]


// remove, removeLast

// Iterate
for nums in threeDoubles{
    print(nums)
}

for (nums, indexValue) in threeDoubles.enumerated(){
    print(nums)
    print(indexValue)
}


// Sets
var set1 : Set<Int> = [1, 2, 3]
var set2 = Set<Int>()

// Insert
set2.insert(3)
set2.insert(4)
set2.insert(5)

// Remove
set1.remove(1)

// Contains
set1.contains(2)

// Set opertations
set1.intersection(set2)
set1.union(set2)
set1.subtracting(set2)
set1.symmetricDifference(set2)
set1.isSubset(of: set2)
set1.isSuperset(of: set2)


// Dictionaries
var dictionary1 : [String: String] = [:]
dictionary1["name"] = "Mitansh"
dictionary1.updateValue("Neha", forKey: "name")
dictionary1["name"] = nil

for key in dictionary1.keys{
    
}



// For in loops

let namesArray = ["name1", "name2", "name3"]
for name in namesArray{
    print(name)
}

for (key, value) in dictionary1{
    print(key)
    print(value)
}

for index in 1...5{
    print(index)
}

for index in stride(from: 0, through: 10, by: 2){
    print(index)
}

// While, repeat while

// If else

// Switch
let testNumber = 10;

switch testNumber{
case 1:
    print(testNumber)
case 2,3:
    print(testNumber)
case 5...8:
    print(testNumber)
default:
    print(testNumber)
}


// Tuple matching
let somePoint = (1, 1)
switch somePoint {
case (0, 0):
    print("\(somePoint) is at the origin")
case (_, 0):
    print("\(somePoint) is on the x-axis")
case (0, _):
    print("\(somePoint) is on the y-axis")
case (-2...2, -2...2):
    print("\(somePoint) is inside the box")
default:
    print("\(somePoint) is outside of the box")
}

// Value binding
let anotherPoint = (2, 0)
switch anotherPoint {
case (let x, 0):
    print("on the x-axis with an x value of \(x)")
case (0, let y):
    print("on the y-axis with a y value of \(y)")
case let (x, y):
    print("somewhere else at (\(x), \(y))")
}

// Where clause
let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
case let (x, y) where x == y:
    print("(\(x), \(y)) is on the line x == y")
case let (x, y) where x == -y:
    print("(\(x), \(y)) is on the line x == -y")
case let (x, y):
    print("(\(x), \(y)) is just some arbitrary point")
}

// Control transfer statements
// Continue
// Break
// Fallthrough




// Functions
func myFirstFunction(name: String) -> String{
    return ("Hello " + name)
}
myFirstFunction(name: "Mitansh")

// Multiple return values in tuple
func minMax(array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

// Return tuple can be optional value as well

// If body of function is single expression, then implicit return

// Argument vs Parameter
func greetAgain(person: String, from hometown: String) -> String {
    return "Hello \(person)!  Glad you could visit from \(hometown)."
}
print(greetAgain(person: "Bill", from: "Cupertino"))

// Can omit argument label by _

// Default parameters
func someFunction(parameterWithoutDefault: Int, parameterWithDefault: Int = 12) {
    // Body
}


// Vardic parameters
// Similar to rest parameters
func arithmeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
arithmeticMean(1, 2, 3, 4, 5)


// Inout parameters (&)
// By default, parameters constant
// To make variable, add inout
// person: inout String

// Function type
// eg - (Int, Int) -> Int
// var input : Int = 10
// var mathFunction: (Int, Int) -> Int = addTwoInts
// Can be given as parameter types
// Can be given as return types to other functions



// Closures
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

// Escaping closures ??
// Auto closures ??



// Enumeration

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

// To iterate over enums
enum Beverage: CaseIterable{
    case tea, coffee, water
}

for item in Beverage.allCases{
    print(item)
}

// Associated Values
enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}
var productBarcode = Barcode.upc(1, 2, 3, 4)

// Raw values - default values
// Implicit as well as explicit


// Structures and Classes
struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

let someResolution = Resolution()
let someVideoMode = VideoMode()

// Auto memberwise initialiser in struct
let vga = Resolution(width: 10, height: 20)

// Identity operators for reference types
// ===, !==


// Properties
// Stored and Computed

// Lazy properties (lazy keyword)

// Computed properties (getters and setters)
struct Reactange{
    var height = 0;
    var width = 0;
    var area : Int {
        get{
            return height * width
        }
        // Optional set
    }
}

// Property observers (willSet, didSet)
class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newTotalSteps) {
            print("About to set totalSteps to \(newTotalSteps)")
        }
        didSet {
            if totalSteps > oldValue  {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}



// Methods
class Counter {
    var count = 0
    func increment() {
        count += 1
    }
    func increment(by amount: Int) {
        count += amount
    }
    func reset() {
        count = 0
    }
}

// Self

// Mutating function in struct and enum
// Type methods


// Subscript
struct TimesTable {
    let multiplier: Int
    subscript(index: Int) -> Int {
        return multiplier * index
    }
}
let threeTimesTable = TimesTable(multiplier: 3)
print("six times three is \(threeTimesTable[6])")
// Prints "six times three is 18"




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
    
    override func getName() -> String { // Override concept
        return ("Hello " + name)
    }
}

let person1 = Person()
let student1 = Student()
print(student1.age)
print(student1.getName())
print(student1.studentId)


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



// Initialiser Delegation
// In value types simple
/*
struct Rect {
    var origin = Point()
    var size = Size()
    init() {}
    init(origin: Point, size: Size) {
        self.origin = origin
        self.size = size
    }
    init(center: Point, size: Size) {
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)
        self.init(origin: Point(x: originX, y: originY), size: size)
    }
}
 */


// Class Inhertitance and Initialisers
// Designated initialisers and convenience intialisers

class Food {
    var name: String
    init(name: String) {
        self.name = name
    }
    convenience init() {
        self.init(name: "[Unnamed]")
    }
}

class RecipeIngredient: Food {
    var quantity: Int
    init(name: String, quantity: Int) {
        self.quantity = quantity
        super.init(name: name)
    }
    override convenience init(name: String) {
        self.init(name: name, quantity: 1)
    }
}

class ShoppingListItem: RecipeIngredient {
    var purchased = false
    var description: String {
        var output = "\(quantity) x \(name)"
        output += purchased ? " ✔" : " ✘"
        return output
    }
}

//ShoppingListItem()
//ShoppingListItem(name: "Bacon")
//ShoppingListItem(name: "Eggs", quantity: 6)

//RecipeIngredient()
//RecipeIngredient(name: "Bacon")
//RecipeIngredient(name: "Eggs", quantity: 6)



// Failable initialisers
class Product {
    let name: String
    init?(name: String) {
        if name.isEmpty { return nil }
        self.name = name
    }
}

class CartItem: Product {
    let quantity: Int
    init?(name: String, quantity: Int) {
        if quantity < 1 { return nil }
        self.quantity = quantity
        super.init(name: name)
    }
}


// Deinitialisers

class Bank {
    static var coinsInBank = 10_000
    static func distribute(coins numberOfCoinsRequested: Int) -> Int {
        let numberOfCoinsToVend = min(numberOfCoinsRequested, coinsInBank)
        coinsInBank -= numberOfCoinsToVend
        return numberOfCoinsToVend
    }
    static func receive(coins: Int) {
        coinsInBank += coins
    }
}

class Player {
    var coinsInPurse: Int
    init(coins: Int) {
        coinsInPurse = Bank.distribute(coins: coins)
    }
    func win(coins: Int) {
        coinsInPurse += Bank.distribute(coins: coins)
    }
    deinit {
        Bank.receive(coins: coinsInPurse)
    }
}


// Optional Chaining
class NewPerson {
    var residence: Residence?
}

class Residence {
    var numberOfRooms = 1
}

let john = NewPerson()

if let roomCount = john.residence?.numberOfRooms {
    print("John's residence has \(roomCount) room(s).")
} else {
    print("Unable to retrieve the number of rooms.")
}

// Similarly can access properties, methods, subscripts, etc


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
    try errorThrowingFunction
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

// Task, Task Groups
// To check task cancellation Task.checkCancellation()
// Actors



// Type Casting
class MediaItem {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Movie: MediaItem {
    var director: String
    init(name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
}

class Song: MediaItem {
    var artist: String
    init(name: String, artist: String) {
        self.artist = artist
        super.init(name: name)
    }
}

let movieInstance = Movie(name: "IronMan", director: "Xyz")
let songName = Song(name: "Nameeee", artist: "Aaaartist")
print(movieInstance is Movie) // is to check of which type
print(movieInstance is MediaItem)
print(movieInstance is Song)


// DownCasting with as? or as!
// movieInstance as? Movie


// Any and AnyObject


// Extensions
extension Song{
    var isGood : Bool {
        return true
    }
}












