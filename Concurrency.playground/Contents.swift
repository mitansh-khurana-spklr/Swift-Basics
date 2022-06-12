import UIKit

// Concurrency
// Includes asynchronous code and parallel processing



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
 

