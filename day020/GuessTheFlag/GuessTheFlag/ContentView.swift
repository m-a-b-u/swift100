//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Manuel Burgschachner on 03.11.20.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showAlert = false
    
    var body: some View {
        VStack(spacing: 20){
            Text("Hello, world!")
            Text("Hello, again!")
            Spacer()
        }
        HStack(alignment: .firstTextBaseline, spacing: 20, content: {
            Text("Hello, world!")
            Spacer()
            Text("Hello, again!")
            Spacer()

        })
        ZStack {
            Text("Hello World")
            Text("This is inside a stack")
        }
        VStack(spacing: 40){
            HStack(spacing: 40){
                Text("1")
                Text("2")
                Text("3")
            }
            HStack(spacing: 40){
                Text("4")
                Text("5")
                Text("6")
            }
            HStack(spacing: 40){
                Text("7")
                Text("8")
                Text("9")
            }
        }
        ZStack{
            Color.yellow.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Color.red.frame(width: 300, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Text("This is background colored")
                .background(Color(red: 0.9, green: 0.5, blue: 0.5))
        }
        ZStack{
        LinearGradient(gradient: Gradient(colors: [.red,.blue]), startPoint: .center, endPoint: .bottom)
        RadialGradient(gradient: Gradient(colors: [.green,.black]), center: .center, startRadius: 50, endRadius: 200)
        AngularGradient(gradient: Gradient(colors: [.blue,.red,.yellow,.green,.blue]), center: .center )
        }
        Button(action:{
            print("Button was tapped")
        }){
            HStack(spacing: 15){
                Image(systemName: "pencil").renderingMode(.original)
                Text("Edit")
            }
        }
        Button("Showing alert"){
            self.showAlert = true
        }.alert(isPresented: $showAlert, content: {
            Alert(title: Text("Hello SwiftUI"), message: Text("This is some text"), dismissButton: .default(Text("OK")))
        })
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
