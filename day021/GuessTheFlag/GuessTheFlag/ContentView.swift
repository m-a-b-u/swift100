//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Manuel Burgschachner on 04.11.20.
//

import SwiftUI

struct ContentView: View {
    
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    
    @State private var showingScore = false
    @State private var scoreTitle = ""
    
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
                        Image(self.countries[number])
                            .renderingMode(.original)
                        }
                    .clipShape(Capsule())
                    .shadow(color: .black, radius: 5)
                    .overlay(Capsule().stroke(Color.black, lineWidth: 2))
                }
                Spacer()
            }
        }.alert(isPresented: $showingScore){
            Alert(title: Text(scoreTitle), message: Text("Your score is ???"), dismissButton: .default(Text("Continue")){
                askQuestion()
            }
            )
        }
    }
    
    func flagTapped(_ number:Int){
        if number == correctAnswer {
            scoreTitle = "Correct"
        }
        else{
            scoreTitle = "Wrong"
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
