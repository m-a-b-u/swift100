import UIKit

class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed:String) {
        self.name = name
        self.breed = breed
    }
}

let poppy = Dog(name: "Poppy", breed: "Poodle")


class Poodle: Dog {
    
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}

let herbert = Poodle(name: "Herbert")

// final class Cat - with keyword final you forbid inheritance

class Cat {
    func makeNoise() {
        print("Meow")
    }
}

class Minicat: Cat{
    override func makeNoise() {
        print("Meooooooowi")
    }
}

let mauzi = Cat()
let frosella = Minicat()

mauzi.makeNoise()
frosella.makeNoise()


// Copying objects

class Singer {
    var name = "Taylor Swift"
}

var singer = Singer()
print(singer.name)

var singerCopy = singer
singerCopy.name = "Justin Bieber"
print(singer.name)

// Deinitializers

class Person {
    var name = "John Doe"
    
    init() {
        print("\(name) is alive!")
    }
    func printGreeting() {
        print("Hello, I´m \(name)")
    }
    deinit {
        print("\(name) is no more!")
    }
    
}

for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}

// Mutability

class Singer2 {
    var name = "Taylor Swift"
}

let taylor = Singer2()
taylor.name = "Ed Sheeran"
print(taylor.name)
