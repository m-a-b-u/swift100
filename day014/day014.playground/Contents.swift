import UIKit

// Functions

func favoriteAlbum(){
    print("My favorite is fearless")
}

favoriteAlbum()

func favorite(name: String){
    print("My favorite is \(name)")
}

favorite(name: "Mani")

func printAlbumRelease(name: String, year: Int){
    print("\(name) and \(year)")
}

printAlbumRelease(name: "Superstar", year: 1993)


func countLettersInString(string: String){
    print("The string \(string) hast \(string.count) letters")
}

countLettersInString(string: "Hello")


func countLettersInString2(mystring str: String){
    print("The string \(str) hast \(str.count) letters")
}

countLettersInString2(mystring: "Hello")

func countLettersInString3(_ str: String){
    print("The string \(str) hast \(str.count) letters")
}

countLettersInString3("Hello")

func countLetters(in str: String){
    print("The string \(str) hast \(str.count) letters")
}

countLetters( in: "Hello")

func albumIsTaylors(name: String) -> Bool{
    if name == "Taylor" { return true}
    if name == "Swift" { return true}
    return false
}

if albumIsTaylors(name: "Taylor"){
    print("That´s hers")
}
else{
    print("Who made that?")
}

if albumIsTaylors(name: "Herbert"){
    print("That´s hers")
}
else{
    print("Who made that?")
}

// Optionals

func getHaterStatus() -> String{
    return "Hate"
}



var status: String?
status = getHaterStatus2(weather: "rainy")

var status2 = getHaterStatus2(weather: "rainy")

//if let unwrappedStatus = status2 {
    // unwrappedStatus contains a non-optional string
//    else {
        // in case you want an else block, here you go
//    }
//}

func getHaterStatus2(weather: String) -> String?{
    if weather == "sunny" {
        return nil
    }
    else {
    return "Hate"
    }
}

func takeHaterAction(status: String){
    if status == "Hate" {
        print("Haiting")
    }
}


// NIL, so no execution
if let haterStatus = getHaterStatus2(weather: "sunny"){
    takeHaterAction(status: haterStatus)
}
// NOT NIL, getting unwrapped, so execution
if let haterStatus2 = getHaterStatus2(weather: "windy"){
    takeHaterAction(status: haterStatus2)
}

func yearAlbumReleased(name: String) -> Int{
    if name == "Taylor Swift" { return 2006 }
    if name == "Fearless" { return 2008 }
    return 0
}

func yearAlbumReleased2(name: String) -> Int?{
    if name == "Taylor Swift" { return 2006 }
    if name == "Fearless" { return 2008 }
    return nil
}

var items = ["James", "John", "Sully"]

func position(of string: String, in array: [String]) -> Int? {
    for i in 0..<array.count{
        if array[i] == string {
            return i
        }
    }
    return nil
}

let jamesPosition = position(of: "James", in: items)
let johnPosition = position(of: "John", in: items)
let sullyPosition = position(of: "Sully", in: items)
let bobPosition = position(of: "Bob", in: items)

if let manuelPosition = position(of: "Manuel", in: items){
    print("This will never be printed, as Manuel is not in Array")
}

func dayAlbumReleased(name: String) -> Int? {
    if name == "Taylor" { return 2008 }
    if name == "Swift" { return 2002 }
    return nil
}

var day = dayAlbumReleased(name: "Taylor")

if day == nil {
    print("There was an error")
}
else {
    print("It was released in \(day!)") // ! force unwrap
}

var name: String = "Paul"
var name2: String? = "Bob"
var name3: String! = "Sophie"

// Optional chaining

func albumReleased(year: Int) -> String? {
    switch year{
    case 2006: return "Taylor"
    case 2008: return "Swift"
    default: return nil
    }
}

let album = albumReleased(year: 2006)?.uppercased()
print("The album is \(album ?? "Herbert")")

let str = "Hello world"
print(str.uppercased())


let album2 = albumReleased(year: 2006) ?? "unknown"
print("The album is \(album2)")


let album3 = albumReleased(year: 2222) ?? "unknown"
print("The album is \(album3)")

// Enumerations

enum weatherType {
    case sun
    case cloud
    case rain
    case wind
    case snow
}

func getHaterStatus(weather: weatherType) -> String?{
    if weather == .sun {return nil}
    else {
        return "Hate"
    }
}

func getHaterStatus2(weather: weatherType) -> String?{
    switch weather {
    case .sun : return nil
    case .cloud : return "cloud"
    default: return "noweather"
    }
}


getHaterStatus(weather: .cloud)

getHaterStatus2(weather: .sun)

enum weatherType2 {
    case sun
    case cloud
    case rain
    case wind(speed: Int)
    case snow
}

func getHaterStatus3(weather: weatherType2) -> String? {
    switch weather {
    case .sun:
        return nil
    case .wind(let speed) where speed < 10:
        return "meh"
    case .cloud, .wind:
        return "dislike"
    case .rain, .snow:
        return "hate"
    }
}

getHaterStatus3(weather: .wind(speed: 13))
getHaterStatus3(weather: .wind(speed: 3))

// Structs

struct Person {
    var clothes: String
    var shoes: String
    
    // func is called method in struct!
    func describe()  {
        print("I like wearing \(clothes) with \(shoes)")
    }
}

let taylor = Person(clothes: "Tshirts", shoes: "Sneakers")
let other = Person(clothes: "skirt", shoes: "highheels")

print(taylor.shoes)
print(other.clothes)
print(taylor.self)

var taylorCopy = taylor
taylorCopy.shoes = "flipflops"

print(taylor)
print(taylorCopy)

taylor.describe()
 
// Classes

class Person2 {
    var clothes: String
    var shoes: String
    
    init(clothes: String, shoes: String) {
        self.clothes = clothes
        self.shoes = shoes
    }
}

class Singer {
    var name: String
    var age: Int
    
    init(name: String, age: Int){
        self.name = name
        self.age = age
    }
    
    func sing() {
        print("la la la")
    }
}

var swift = Singer(name: "Taylor", age: 4)
swift.name
swift.age
swift.sing()

@objcMembers class CountrySinger: Singer{
    override func sing() {
        print("Yodeliho")
    }
}

var swift2 = CountrySinger(name: "Herbert", age: 12 )

swift2.sing()

class HeavyMetalSinger: Singer {
    var noiseLevel: Int
    init(name: String, age: Int, noiseLevel: Int) {
        self.noiseLevel = noiseLevel
        super.init(name: name, age: age)
    }
    // use @objc or @øbjcMember to let Objective C call swift stuff
    @objc override func sing(){
        print("RARARARA")
    }
}

var swift3 = HeavyMetalSinger(name: "Murli", age: 3, noiseLevel: 777)

swift3.noiseLevel
swift3.self
swift3.sing()
swift3.name
swift3.age


