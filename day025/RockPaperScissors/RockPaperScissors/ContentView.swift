//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by Manuel Burgschachner on 11.11.20.
//


//Each turn of the game the app will randomly pick either rock, paper, or scissors.
//Each turn the app will either prompt the player to win or lose.
//The player must then tap the correct move to win or lose the game.
//If they are correct they score a point; otherwise they lose a point.
//The game ends after 10 questions, at which point their score is shown.

import SwiftUI

struct ContentView: View {
    
    let move = ["rock", "paper", "scissors"]
    
    
    // 0 rock | 1 paper | 2 scissors
    // 0x2
    // 1x0
    // 2x1
    
    // if computer == 0 && user == 2 && decision = true // -1
    // if computer == 0 && user == 1 && decision = true // +1
    // if computer == 0 && user == 0 && decision = true // -1
    
    // if computer == 0 && user == 2 && decision = false // +1
    // if computer == 0 && user == 1 && decision = false // -1
    // if computer == 0 && user == 0 && decision = false // +1
    
    
    @State private var computerMove = Int.random(in: 0...2)
    @State private var computerDecision = Bool.random()
    @State private var scoreCount = 0
    @State private var roundCount = 0
    @State private var showingScore = false

    
    
    var body: some View {
                    
        
        VStack(spacing:70){
            HStack(spacing:20){
                Text("RPS - The Game")
                    .bold()
            }
            Form(){
       
                    Text("Choosed: \(move[computerMove])")
                    Text("You have to: \(computerDecision == true ? "win" : "loose" )")
                
            }
            .frame(height: 150)
            VStack(spacing:20){
                    HStack(spacing: 60){
                        
                        ForEach(0..<3) { number in
                            Button(action: {
                                print("Button \(move[number]) tapped")
                                print(roundCount)
                             
                                moveTapped(number)
                                roundCount += 1
                        })  {
                                Image(self.move[number])
                                    .resizable()
                                    .renderingMode(.original)
                                    .frame(width: 50, height: 50)

                            }.alert(isPresented: $showingScore){
                                Alert(title: Text("RPS"), message: Text("10 rounds are over - Your score is \(scoreCount)"), dismissButton: .default(Text("Restart")){
                                    reset()
                                }
                                )
                            }
                       
                        }

                        
                    }            }

            VStack(spacing:0){
                Form{
                    Text("Rounds: \(roundCount)")
                    Text("Total Score: \(scoreCount)")
                }
                .frame(height: 150)
            }
                Button("Reset game" ){
                    
                    reset()
                    
                }
                .frame(minWidth: 100, maxWidth: 100, minHeight: 50, maxHeight: 50, alignment: .center)
                
            }
        }
    
    func moveTapped(_ number:Int){
        
        if roundCount == 9 {
            showingScore = true
        }
        
        if(computerDecision == true){ // computer said you have to win
            
            // computer selected rock
            
            if(computerMove == 0 && number == 2){
                scoreCount -= 1
            }
            if(computerMove == 0 && number == 1){
                scoreCount += 1
            }
            if(computerMove == 0 && number == 0){
                scoreCount -= 1
            }
            
            // computer selected paper
            
            if(computerMove == 1 && number == 2){
                scoreCount += 1
            }
            if(computerMove == 1 && number == 1){
                scoreCount -= 1
            }
            if(computerMove == 1 && number == 0){
                scoreCount -= 1
            }
            
            // computer selected scissors
            
            if(computerMove == 2 && number == 2){
                scoreCount -= 1
            }
            if(computerMove == 2 && number == 1){
                scoreCount -= 1
            }
            if(computerMove == 2 && number == 0){
                scoreCount += 1
            }
            
            
        }
        else {
            
            if(computerMove == 0 && number == 2){
                scoreCount += 1
            }
            if(computerMove == 0 && number == 1){
                scoreCount -= 1
            }
            if(computerMove == 0 && number == 0){
                scoreCount += 1
            }
            
            // computer selected paper
            
            if(computerMove == 1 && number == 2){
                scoreCount -= 1
            }
            if(computerMove == 1 && number == 1){
                scoreCount += 1
            }
            if(computerMove == 1 && number == 0){
                scoreCount += 1
            }
            
            // computer selected scissors
            
            if(computerMove == 2 && number == 2){
                scoreCount += 1
            }
            if(computerMove == 2 && number == 1){
                scoreCount += 1
            }
            if(computerMove == 2 && number == 0){
                scoreCount -= 1
            }
            
        }

        shuffle()
    }
    
    func shuffle() {
        computerMove = Int.random(in: 0...2)
        computerDecision = Bool.random()
    }
    
    func reset(){
        roundCount = 0
        scoreCount = 0
        shuffle()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
