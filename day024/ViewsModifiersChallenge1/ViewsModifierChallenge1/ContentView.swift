//
//  ContentView.swift
//  ViewsModifierChallenge1
//
//  Created by Manuel Burgschachner on 09.11.20.
//

//Create a custom ViewModifier (and accompanying View extension) that makes a view have a large, blue font suitable for prominent titles in a view.


import SwiftUI

// struct with func returning some View

struct prominentTitlesModifier: ViewModifier {

    func body(content: Content) -> some View {
           return content
                .foregroundColor(.blue)
//                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .font(.system(size: 100, weight: .black, design: .default))

    }
}

// extension to view with prominentTitles as new modifier

extension View {
    func prominentTitles() -> some View {
        self.modifier(prominentTitlesModifier())
    }
}

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .prominentTitles()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
