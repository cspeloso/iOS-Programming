import Foundation
/*:
 ## Exercise - While Loops
 
 Create a while loop that simulates rolling a 6-sided dice repeatedly until a 1 is rolled. After each roll, print the value. (Hint: use `Int(arc4random_uniform(6) + 1)` to generate a random number between 1 and 6).
 */
var random = 0
while(random != 1){
    random = Int(arc4random_uniform(6) + 1)
    print(random)
}

print("You rolled a \(random)")


//: [Previous](@previous)  |  page 3 of 6  |  [Next: App Exercise - While Loops](@next)
