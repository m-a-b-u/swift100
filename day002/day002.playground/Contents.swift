import UIKit

// array

let john = "John Lennon"
let paul = "Paul MCCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"
n
let beatles = [john,paul,george,ringo]
beatles[1]

var readings: [Bool] = [false, false, true, false]

let ages: [Int] = [26, 28, 39]



// sets

let colors = Set(["red","green","blue"])
let colors2 = Set(["red","green","blue","blue"])

// tuples

var name = (first: "Taylor", last: "Swift")
var name2 = (first: """
                    Taylor
                    Swift
                    """, last: "Swift")

name.0
name.first

name = (first: "Justin", last: "Biber")

// array vs sets vs tuples

let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")
let set = Set(["aardvark", "astronaut", "azalea"])
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]

// dictionaries

let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]

heights["Taylor Swift"]

// dictonary default values

let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]

favoriteIceCream["Paul"]
favoriteIceCream["Charlotte", default: "Unknown"]

// empty collections

var teams = [String: String]()
var scores = Dictionary<String, Int>()

teams["Paul"] = "Red"
teams["Sophie"] = "Green"
teams["Sophie"]

var results = [Int]()
var results2 = Array<Int>()

results = [1,2,3]
results[0]

var words = Set<String>()
var numbers = Set<Int>()

// enums

let result = "failure"
let result2 = "failed"
let result3 = "fail"

enum Result {
    case success
    case failed
}

let result4 = Result.success
let result5 = Result.failed

// Enum associated values

enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "Football")


// Enum raw values

enum Planet: Int {
    case mercury = 2
    case venus
    case earth
    case mars
}

let earth = Planet(rawValue: 3)
let x = Planet.earth.rawValue



