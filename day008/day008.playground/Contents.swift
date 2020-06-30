import UIKit

//structs

struct Sport {
    var name: String
    var isOlympicSport: Bool

    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}

var chessBoxing = Sport(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)
chessBoxing.isOlympicSport = true
print(chessBoxing.olympicStatus)
print(chessBoxing.name)


// prop observers

struct Progress {
    var task: String
    var amount: Int {
       
        didSet {
            print("\(task) is now \(amount)% complete")
        }
//        willSet {
//                   print("\(task) will be soon \(amount)% complete")
//               }
    }
    
}

var progress = Progress(task: "Loading data", amount: 10)

progress.amount = 30
progress.amount = 50
progress.amount = 80
progress.amount = 100

// methods - functions inside structs

struct City {
    var population: Int
    
    func collectTaxes() -> Int {
        return population * 1_000_000
    }
}

var london = City(population: 9_0_0)
london.population = 100
print(london.population)
london.collectTaxes()
print(london.collectTaxes())

// mutating methods

struct Person {
    var name: String
    
     mutating func makeAnon() {
        name = "Anon"
    }
}

var person = Person(name: "Ed")

print(person.name)
person.makeAnon()
print(person.name)

// props and methods of string

let string = "Do or do not, there is no try."

print(string.count)
print(string.hasPrefix("Do"))
print(string.uppercased())
print(string.sorted())
print(string.contains("x"))
print(string.contains("D"))

// props and methods of array

var toys = ["Woody"]

print(toys.count)
toys.append("Buzz")

toys.firstIndex(of: "Buzz")

print(toys.sorted())

toys.remove(at: 0)

print(toys.dropFirst(2))
