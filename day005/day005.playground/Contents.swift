import UIKit

// easy function

func printHelp(){
    let message = """

    Welcome to my App!

    Run this app inside a directory of images and
    my App will resize them all into thumbnails
    
    """
    
    print(message)
    
}

printHelp()

// accepting parameters

print("Hello, world")

func square(number: Int){
    print(number * number)
}

square(number: 2)

func square2(number: Int) -> Int{
    return number * number
    print("This text will never be displayed!")
}

let x = square2(number: 4)

func sayHello(to name: String){
    print("Hello \(name)")
}

sayHello(to: "Taylor")

func greet(_ name :String){
    print("Hello \(name)")
}

greet("Taylor")

// default parameters

func greet2(_ person: String, nicely: Bool = true){
    if(nicely == true){
        print("Hello \(person)")
    }
    else{
        print("Oh no, it´s \(person) again")
    }
}

greet2("Taylor", nicely: false)
greet2("Taylor")

// variadic functions

print("Haters", "gonna", "hate")

func square3(numbers: Int...){
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

square3(numbers: 1,2,3,4,5,6,7,8,9,10)

// throwing functions

enum PasswordError: Error{
    case obvious
}

func checkPassword(_ password: String) throws -> Bool{
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}

do{
    try checkPassword("12345")
    print("That password is good!")
} catch{
    print("You can´t use this password!")
}

// inout parameters

func doubleInPlace(number: inout Int){
    number *= 2
}

var myNum = 10
doubleInPlace(number: &myNum)
print(myNum)
doubleInPlace(number: &myNum)
print(myNum)

// tuple return

func getTime() -> (hour: Int, minute: Int,second: Int) {
    let hour = 1
    let minute = 2
    let second = 3
    return ( hour, minute, second)
}
print(getTime())

// optinal stuff

func greet3(name: String) {
    if name == "Taylor Swift" {
        "Oh wow!"
    } else {
        "Hello, \(name)"
    }
}
greet3(name: "Taylor zwift")


func greet4(name: String) -> String {
    name == "Taylor Swift" ? "Oh wow!" : "Hello, \(name)"
}

func getUser() -> (first: String, last: String) {
    (first: "Taylor", last: "Swift")
}

let user = getUser()
print(user.first)


func packLunchbox(number: Int, healthy: Bool = true) {
    for _ in 0..<number {
        if healthy {
            print("I'm packing a healthy lunchbox.")
        } else {
            print("Pizza for everyone!")
        }
    }
}
