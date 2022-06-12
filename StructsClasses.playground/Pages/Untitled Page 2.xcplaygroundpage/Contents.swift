//: [Previous](@previous)

// open
// public
// internal
// file private
// private


struct Student{
    var name: String
    var age: Int
}

var student1 = Student(name: "Mitansh", age: 20)

var student2 = student1
student2.name = "Khurana"

print(student1.name)
print(student2.name)


// let student3 = Student(name: "Neha", age: 18)
// student3.age = 23



class Car{
    var model: String = "Honda"
    var year: Int = 2021
}

var car1 = Car()
var car2 = car1

car1.year = 2022
print(car2.year)
print(car1.year)
