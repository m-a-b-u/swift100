//
//  ContentView.swift
//  ViewsModifiersChallenge3
//
//  Created by Manuel Burgschachner on 09.11.20.
//


import SwiftUI

struct ContentView: View {
    
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var scoreCount = 0
    
//    FlagImage View
    
    struct FlagView: View {
        var flag: String

        var body: some View {
            Image(flag)
                .renderingMode(.original)
                .clipShape(Capsule())
                .overlay(Capsule().stroke(Color.black, lineWidth: 1))
                .shadow(color: .black, radius: 2)
        }
    }
    
    
    
//    Main
    
    var body: some View {
        
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.blue,.black]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack(spacing:50){
                
                VStack(spacing:20){
                    Text("Tap the flag of:")
                        .foregroundColor(.white)
                    Text(countries[correctAnswer])
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .fontWeight(.black)

                }
                ForEach(0..<3) { number in
                    Button(action: {
                        flagTapped(number)
                })  {
                        FlagView(flag: self.countries[number])
                        }
                }
                Text("Score: \(scoreCount)")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                Spacer()
            }
        }.alert(isPresented: $showingScore){
            Alert(title: Text(scoreTitle), message: Text("Your score is \(scoreCount)"), dismissButton: .default(Text("Continue")){
                askQuestion()
            }
            )
        }
    }
    
    func flagTapped(_ number:Int){
        if number == correctAnswer {
            scoreTitle = "Correct"
            scoreCount += 1
        }
        else{
            scoreTitle = "Wrong - That´s the flag of \(countries[number]). Score was reseted"
            scoreCount = 0
        }
        showingScore = true
    }
    func askQuestion(){
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//
//Add an @State property to store the user’s score, modify it when they get an answer right or wrong, then display it in the alert.
//Show the player’s current score in a label directly below the flags.
//When someone chooses the wrong flag, tell them their mistake in your alert message – something like “Wrong! That’s the flag of France,” for example.
