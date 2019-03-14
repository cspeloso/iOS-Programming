/*:
 ## Exercise - Create Functions
 
 Write a function called `introduceMyself` that prints a brief introduction of yourself. Call the funtion and observe the printout.
 */
func introduceMyself(){
    print("My name is Chris Peloso and I am in the iOS programming class right now.")
}

introduceMyself()
/*:
 Write a function called `magicEightBall` that generates a random number and then uses either a switch statement or if-else-if statements to print different responses based on the random number generated. `let randomNum = arc4random_uniform(UInt32(5))` will generate a random number from 0 to 4, after which you can print different phrases corresponding to the number generated. Call the function multiple times and observe the different printouts. Note that the random number generation will not work unless your function is declared after the `import Foundation` statement below. This is because the `arc4random_uniform(_:)` function is declared in the `Foundation` framework.
 */
import Foundation

func magicEightBall(){
    let randomNum = arc4random_uniform(UInt32(5))
    
    switch randomNum{
    case 0:
        print("Your outcome is good.")
    case 1:
        print("Outcome not so good.")
    case 2:
        print("Your luck is good!")
    case 3:
        print("Watch out for danger.")
    default:
        print("Ask again later.")
    }
}

magicEightBall()
//: page 1 of 6  |  [Next: App Exercise - A Functioning App](@next)
