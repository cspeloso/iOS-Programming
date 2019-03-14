/*:
 ## Exercise - Return Values and Tuples
 
 Write a function called `greeting` that takes a `String` argument called name, and returns a `String` that greets the name that was passed into the function. I.e. if you pass in "Dan" the return value might be "Hi, Dan! How are you?" Use the function and print the result.
 */
func greeting(_ name: String) -> String {
    let greetingSTR = "Hi, \(name)! How are you?"
    
    return greetingSTR
}

print(greeting("Chris"))

let thing = greeting("Chris")

print(thing)
/*:
 Write a function that takes two `Int` arguments, and returns an `Int`. The function should multiply the two arguments, add 2, then return the result. Use the function and print the result.
 */
func thingy(_ one: Int, and two: Int) -> Int
{
    let answer = (one * two) + 2
    
    return answer
}

print(thingy(3,and: 2))
//: [Previous](@previous)  |  page 5 of 6  |  [Next: App Exercise - Separating Functions](@next)
