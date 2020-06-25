import UIKit

var str = "Hello, playground"

// operators

let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
let difference = firstScore - secondScore

let product = firstScore * secondScore
let divided = firstScore / secondScore

let remainder = 13 % secondScore

// operator overloading

let meaningOfLife = 42
let doubleMeaning = 42 + 42

let fakers = "Fakers gonna "
let action = fakers + "fake"

let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf

// compound assignment operators

var score = 95
score -= 5

var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"

// comparison operators

let oneScore = 6
let twoScore = 4

oneScore == secondScore
oneScore != secondScore
oneScore <= secondScore
oneScore > secondScore

"Taylor" <= "Swift"

// conditions

let firstCard = 2
let secondCard = 1

if firstCard + secondCard == 2 {
    print("Aces - lucky!")
}
else if firstCard + secondCard == 21 {
    print("Blackjack!")
}
else{
    print("Regular cards")
}

// combining conditions

let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}

if age1 > 18 || age2 > 18 {
    print("One is over 18")
}

// ternary operator

let a = 11
let b = 10
print(a == b ? "a and b are the same" : "a and b are not the same")

// switch statements

let weather = "rain"

switch weather {
case "rain":
    print("Bring an umbrella")
    fallthrough
case "snow":
    print("Wrap up warm")
    fallthrough
case "sun":
    print("Wear sunscreen")
default:
    print("Enjoy your day!")
}

// range operators

let score2 = 50

switch score2 {
case 20..<25:
    print("Score is in 20 - 24")
case 25...50:
    print("Score is in 20 - 50")
case 51..<81:
    print("Score is in 51 - 80")
default:
    print("You did great")
}

// optional stuff

let weeks = 465 / 7
let days = 465 % 7

print("There are \(weeks) weeks and \(days) days until the event.")

let number = 465
let isMultiple = number.isMultiple(of: 7)


// following only working in >Swift 5.3
//enum Sizes: Comparable {
//    case small
//    case medium
//    case large
//}
//
//let first = Sizes.small
//let second = Sizes.large
//print(first < second)
//

let names = ["Piper", "Alex", "Suzanne", "Gloria"]
print(names[0])
print(names[1...3])
print(names[0...])

