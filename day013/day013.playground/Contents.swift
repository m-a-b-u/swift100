import UIKit

// Variables and constants

var name = "Tim McGraw"
name = "Romeo"

let name2 = "Tim"
// name2 = "Tom"

// Types of Data

var name3 = "Tim McGraw"
var name4: String

var age: Int
age = 25

// name4 = 25
// age = "Tim"

var latitude: Double
latitude = 36.166667
var longitude: Float
longitude = -1286.783334

var stayOutTooLate: Bool
stayOutTooLate = true
var nothingInBrain: Bool
nothingInBrain = true
var missABeat: Bool
missABeat = false
var isItTrue = true

var name5: String = "Tim McGraw"

// Operators

var a = 10
a = a + 1
a = a - 1
a = a * a

var b = 10
b += 10
b -= 10
b *= 10

var c = 1.1
var d = 2.2
var e = c + d

var name10 = "Tim"
var name11 = "Romeo"
var both = name10 + "and " + name11

var x = 1.1
var y = 2.2
var z = x + y

x > 3
x >= 3
x > 4
y < 4

var name12 = "Tim"
name12 == "Tim"
name12 == "TIM"
name12 != "Tim"
var stayOutTooLate2 = true
stayOutTooLate2
!stayOutTooLate2

// String interpolation

var name22 = "Tim"
"Your name is \(name22)"
"Your name is " + name22

var name33 = "Tim McGraw"
var age33 = 25
var latitude33 = 36.166667

"Your name is \(name33), your age is \(age33), and your latitude is \(latitude33)"

"Your age is \(age) years old. In another \(age) years you will be \(age*2)"

// Arrays

var evenNumbers = [2, 4, 6, 8]
var songs: [String] = ["Shack it off", "Back to december", "Yolo event"]

var songs2: [String] = ["Shack it off", "Back to december", "Yolo event"]

songs[0]
songs[1]
songs[2]

type(of: songs)
type(of: evenNumbers)

var songs3: [String] = []
// songs3[0] = "Shake it off"

var both2 = songs + songs2
print(both2)
both2 += ["Everything has changed"]
print(both2)

// Dictionaries

var person = ["Taylor", "Alison", "Swift", "December", "taylorswift.com"]

person[1]
person[3]


var person2 = [
                "first": "Taylor",
                "middle": "Alison",
                "last": "Swift",
                "month": "December",
                "website": "taylorswift.com"
            ]

person2["first"]
person2["month"]

// Conditional statements

var action: String
var person9 = "hater"

if person9 == "hater" {
    action = "hate"
} else if person9 == "player" {
    action = "play"
} else {
    action = "cruise"
}

var action2: String
var tooLate = true
var nothingTooLate = true

if tooLate && nothingTooLate {
    action = "cruise"
}

var stay2Late = true
var nothing1Brain = true

if !stay2Late && !nothing1Brain {
    action = "cruise"
}

// Loops

print("1 x 10 is \(1 * 10)")
print("2 x 10 is \(2 * 10)")
print("3 x 10 is \(3 * 10)")
print("4 x 10 is \(4 * 10)")
print("5 x 10 is \(5 * 10)")
print("6 x 10 is \(6 * 10)")
print("7 x 10 is \(7 * 10)")
print("8 x 10 is \(8 * 10)")
print("9 x 10 is \(9 * 10)")
print("10 x 10 is \(10 * 10)")

for i in 1...10{
    print ("\(i) x 10 is \(i*10)")
}

var str = "Fakers gonna"
for _ in 1...5 {
    str += " fake"
}

print(str)

var music = ["Shake", "with", "me"]

for song in music {
    print("My favorite song is \(song)")
}

var people = ["players", "haters", "heart-breakers", "fakers"]
var actions = ["play", "hate", "break", "fake"]

for i in 0..<3 {
    print("\(people[i]) gonna \(actions[i])")
}
for i in 0...3 {
    print("\(people[i]) gonna \(actions[i])")
}

var people4 = ["players", "haters", "heart-breakers", "fakers"]
var actions4 = ["play", "hate", "break", "fake"]

for i in 0 ..< people4.count {
    var str2 = "\(people4[i]) gonna"

    for _ in 1 ... 5 {
          str2 += " \(actions4[i])"
      }
    print(str2)
}

var counter = 0

while true {
    print ("Counter is now \(counter)")
    counter += 1
    
    if counter == 556 {
        break
    }
}

var manis = ["oans", "zwoa", "drei", "vieri"]

for mani in manis {
    if mani == "drei" {
    continue
    }
    print ("My favorite is \(mani)")
}

// Switch case

var n = 7

switch n {
case 0...3:
    print ("0-3")
case 4..<7:
    print ("4-6")
case 8:
    print("8")
default:
    print("not specified")
}


