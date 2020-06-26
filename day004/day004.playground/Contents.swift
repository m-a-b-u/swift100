import UIKit

let count = 1...10

for number in count {
    print("Number is \(number)")
}

let albums = ["Red", "1989", "Reputation"]

for album in albums {
    print("\(album) is on Apple Music")
}

for _ in 1...5 {
    print("play")
}

var number = 1

while number <= 20 {
    print(number)
    number += 1
}
print("Ready or not, here I come!")

var number2 = 1

repeat {
    print(number2)
    number2 += 1
} while number2 <= 20


while false {
    print("this is false")
}

repeat {
    print("This is false")
} while false

//exiting loops

var countDown = 10

while countDown >= 0 {
    print(countDown)
    
    if countDown == 4 {
        print("I´m bored. Let´s go now!")
        break
    }
    
    countDown -= 1
}
print("Blast off!")

//nested loops

outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print("\(i) * \(j) is \(product)")
        
//        break
        
        if product == 50 {
            print("It´s a bullseye")
            break outerLoop
        }
    }
}

//skipping items with continue

for i in 1...10 {
    if i % 2 == 1 {
        continue
    }
    print(i)
}

// infinite loops

var counter = 0

while true {
    print(" ")
    counter += 1
    
    if counter == 273 {
        break
    }
}

//optional testing stuff

let names = ["Sterling", "Cyril", "Lana", "Ray", "Pam"]

// when you do not need the constant as loop variable inside, use _ instead

for _ in names {
    print("[CENSORED] is a secret agent!")
}


//shuffle

let numbers = [1,2,3,4,5]
var random = numbers.shuffled()

while random != numbers {
    random = numbers.shuffled()
    print("\(random)")
}

var random2: [Int]

repeat  {
    random2 = numbers.shuffled()
} while random2 != numbers

let scores = [1,8,4,3,0,5,2]
var counters = 0
let shuffler = scores.shuffled()

for score in shuffler {
    if score == 0 {
        break
    }
    counters += 1
}

print ("You had \(counters) scores befor you got 0")

// secret combination

let options = ["up", "down", "left", "right"]
let secretCombination = ["up", "up", "right"]

outerLoop: for option1 in options {
    for option2 in options {
        for option3 in options {
            print("\(option1), \(option2), \(option3)")
            let attempt = [option1, option2, option3]

            if attempt == secretCombination {
                print("The combination is \(attempt)!")
                break outerLoop
            }
        }
    }
}


var isAlive = false

while isAlive == true {
    print("I'm alive!")
}

print("I've snuffed it!")


var page: Int = 0
while page <= 5 {
    page += 1
    print("I'm reading page \(page).")
}


var averageScore = 2.5
while averageScore < 15.0 {
    averageScore += 2.5
    print("The average score is \(averageScore)")
}
