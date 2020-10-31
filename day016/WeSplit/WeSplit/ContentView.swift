//
//  ContentView.swift
//  WeSplit
//
//  Created by Manuel Burgschachner on 31.10.20.
//

import SwiftUI

struct ContentView: View {
    @State private var tapCount = 0
    @State private var name = ""
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = 1

    var body: some View {
        NavigationView{
                Form{
                    
                    Picker("Select your student", selection: $selectedStudent) {
                                    ForEach(0 ..< students.count) {
                                        Text(self.students[$0])
                                    }
                                }
                                Text("You chose: Student # \(students[selectedStudent])")
                  
                    Button("Tap count \(tapCount)"){
                        self.tapCount += 1
                    }
                    TextField("Enter your name", text: $name)
                    Text("Your name is \(name)")
                    Section{
                        Text("Hello, world!")
                        Text("Hello, world!")
                        Text("Hello, world!")
                    }
                    Group{ // more than 10 allowed when grouped
                        Text("Hello, world!")
                        Text("Hello, world!")
                        Text("Hello, world!")
                    }
                    Text("Hello, world!")
                    Text("Hello, world!")
                    Text("Hello, world!")
//                  ForEach(0 ..< 100) { number in
//                        Text("Row \(number)")
//                  }
                  
                }
                .navigationBarTitle(Text("SwiftUI"), displayMode: .inline)
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
