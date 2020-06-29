import UIKit

// closures as parameters when they accept parameters

func travel2(action: (String) -> Void){
    print("I´m getting ready to go")
    action("Turkey")
    print("I arrived!")
}

travel2 { (place: String) in
    print("I´m going to \(place) in my car")
}

// closures as parameters when they return values

func travel3(action: (String) -> String){
    print("I´m getting ready to go.")
    let description = action("Afrika")
    print(description)
    print("I arrived!")
}

travel3 { (place: String) -> String in
    return "I´m going to \(place) in my car"
}


travel3 { place in
    "I'm going to \(place) in my car"
}

travel3 {
        "I'm going to \($0) in my car"
}

// closures with multiple parameters

func travel4(action: (String, Int) -> String){
    print("I´m getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}

travel4 {
    "I am going to \($0) at age of \($1)"
}

travel4 { (place, age) -> String in
    "I am going to \(place) at age of \(age)"
}

// returning closures from functions

func travel5() -> (String) -> Void {
    return {
        print("I´m going to \($0)")
    }
}

let result = travel5()
result("Austria")

let result2: Void = travel5()("Austria")


// capturing values

func travel6() -> (String) -> Void {
    var counter = 1
    return {
        print("I´m going to \($0)")
        counter += 1
        
        if counter > 5 {
                 print("You now called more than 5 countries with \($0)")
             }
    }
   
}

let result3 = travel6()
result3("Germany")
result3("Swizerland")
result3("USA")
result3("Ungarn")
result3("Bulgarien")
result3("Amsterdam")
result3("Italy")

