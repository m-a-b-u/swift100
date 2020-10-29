import UIKit

// Properties

struct Person {
    var clothes: String {
        willSet {
            updateUI(msg: "I'm changing from \(clothes) to \(newValue)")
        }

        didSet {
            updateUI(msg: "I just changed from \(oldValue) to \(clothes)")
        }
    }
}

func updateUI(msg: String) {
    print(msg)
}

var taylor = Person(clothes: "T-shirts")
taylor.clothes = "short skirts"

struct Person2 {
    var age: Int
    var ageInDogYears: Int {
        get {
            return age * 5
        }
        set {
            age = 1
        }
    }
}

var fan = Person2(age: 7)
print(fan.ageInDogYears)

fan.ageInDogYears = 8

print(fan.ageInDogYears)

// Static properties and methods

struct TaylorFan {
    static var favoriteSong = "Look made me do"
    
    var name: String
    var age: Int
}

let fan2 = TaylorFan(name: "James", age: 25)
print(TaylorFan.favoriteSong)

// Access control

class TaylorFan2 {
    private var name: String?
}

//Polymorphism and typecasting

class Album {
    var name: String

    init(name: String) {
        self.name = name
    }
    
    func getPerformance() -> String {
        return "The album \(name) sold lots"
    }
}

class StudioAlbum: Album {
    var studio: String

    init(name: String, studio: String) {
        self.studio = studio
        super.init(name: name)
    }
    
    override func getPerformance() -> String {
        return "The studio album \(name) sold lots"
    }
}

class LiveAlbum: Album {
    var location: String

    init(name: String, location: String) {
        self.location = location
        super.init(name: name)
    }
    override func getPerformance() -> String {
        return "The live album \(name) sold lots"
    }
}

var taylorSwift = StudioAlbum(name: "Taylor Swift", studio: "The Castles Studios")
var fearless = StudioAlbum(name: "Speak Now", studio: "Aimeeland Studio")
var iTunesLive = LiveAlbum(name: "iTunes Live from SoHo", location: "New York")

//var allAlbums: [Album] = [taylorSwift, fearless, iTunesLive] // for testing opt downcasting
var allAlbums: [Album] = [taylorSwift, fearless] // for testing force downcasting


for album in allAlbums {
    print(album.getPerformance())
    print(album.name)
//    print(album.studio) not working, as swift does not know that album could be studio album

    // optional downcasting
    
    if let studioAlbum = album as? StudioAlbum {
        print(studioAlbum.studio)
    }
    else if let liveAlbum = album as? LiveAlbum {
        print(liveAlbum.location)
    }
    
    // force downcasting
    
    let studioAlbum = album as! StudioAlbum
    print(studioAlbum.studio)

}

let number = 5
let text = String(number)
print(text)

//Closures

let vw = UIView()

UIView.animate(withDuration: 0.5, animations: {
    vw.alpha = 0
})

// trailing closure syntax

UIView.animate(withDuration: 0.5)
{
    vw.alpha = 0
}

// Protocols

protocol Employee {
    var name: String { get set }
    var jobTitle: String { get set }
    func doWork()
}

struct Executive: Employee {
    var name = "Steve Jobs"
    var jobTitle = "CEO"

    func doWork() {
        print("I'm strategizing!")
    }
}

struct Manager: Employee {
    var name = "Maurice Moss"
    var jobTitle = "Head of IT"

    func doWork() {
        print("I'm turning it off and on again.")
    }
}

let staff: [Employee] = [Executive(), Manager()]

var staff2 = Manager(name: "Herber", jobTitle: "Chiller")

for person in staff {
    person.doWork()
}

print(staff2.jobTitle)
print(staff2.name)
print(staff2.doWork())
print(staff2.self)


protocol MyProtocol {
    var myVar1: String { get set }
    var myVar2: String { get }
}

struct MyStruct: MyProtocol {
    var myVar1 = ""
    var myVar2 = ""
}

var testStruct = MyStruct()
testStruct.myVar1 = "test var1"
testStruct.myVar2 = "test var2"

print(testStruct.myVar1) // "test var1"
print(testStruct.myVar2) // "test var2"

var testProtocol: MyProtocol = MyStruct()
testProtocol.myVar1 = "test var1" // No error
//testProtocol.myVar2 = "test var2" // error: cannot assign to property: 'myVar2' is a get-only property

// Extensions

extension Int {
    mutating func plusOne() {
//        return self + 1
    self += 1
    }
}

var myInt = 0

myInt.plusOne()
//6.plusOne()
myInt.plusOne()
myInt

var myInt2 = 10
myInt2.plusOne()

//let otherInt = 10
//otherInt.plusOne()

var str = "  yo     o do       "
str = str.trimmingCharacters(in: .whitespacesAndNewlines)

extension String {
    mutating func trim() {
        self = trimmingCharacters(in: .whitespacesAndNewlines)
    }
}

var str2 = " abc def "
str2.trim()

// Protocol extensions

extension Int {
    func clamp(low: Int, high: Int) -> Int {
        if (self > high) {
            // if we are higher than the upper bound, return the upper bound
            return high
        } else if (self < low) {
            // if we are lower than the lower bound, return the lower bound
            return low
        }

        // we are inside the range, so return our value
        return self
    }
}

let i: Int = 4
print(i.clamp(low: 0, high: 5))

//code like this won’t work because UInt64 doesn’t have the extension:
//let j: UInt64 = 8
//print(j.clamp(low: 0, high: 5))

extension BinaryInteger {
    func clamp(low: Self, high: Self) -> Self {
        if (self > high) {
            return high
        } else if (self < low) {
            return low
        }

        return self
    }
}

protocol Employee2 {
    var name: String { get set }
    var jobTitle: String { get set }
    func doWork()
}

extension Employee2 {
    func doWork() {
        print("I'm busy!")
    }
}
