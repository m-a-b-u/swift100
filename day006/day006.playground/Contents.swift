import UIKit

// closures, part one

let driving = {
    print("I´m driving in my car")
}

driving()

// accepting parameters

let home = { (place: String)
    in
    print("I´m going to \(place) in my car")
}

home("London")


// return

let drivingWithReturn = { (place: String) -> String
    in
    return "I´m going to \(place) in my car"
}

let message = drivingWithReturn("China")
print(message)

// as parameters

func travel(action: () -> Void) {
    print("I´m getting ready to go.")
    action()
    print("I arrived")
}

travel(action: driving)

// trailing closure syntax

travel {
    print("I´m driving in my car")
}

