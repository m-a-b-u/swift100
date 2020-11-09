//
//  ContentView.swift
//  ViewsModifiersChallenge2
//
//  Created by Manuel Burgschachner on 09.11.20.
//


import SwiftUI

struct ContentView: View {
    
    @State private var checkAmount = ""
    @State private var numberOfPeople = "1"
    @State private var tipPercentage = 2
    
    var totalPerPerson: Double {
        // calculate the total per person here
        let peopleCount = Double(numberOfPeople) ?? 1
        let tipSelection = Double(tipPercentages[tipPercentage])
        let orderAmount = Double(checkAmount) ?? 0

        let tipValue = (orderAmount / 100 * tipSelection + orderAmount) / peopleCount
        return tipValue
    }
    
    var totalAmount: Double {
        // calculate the total per person here
        let tipSelection = Double(tipPercentages[tipPercentage])
        let orderAmount = Double(checkAmount) ?? 0

        let tipValue = (orderAmount / 100 * tipSelection + orderAmount)
        return tipValue
    }
    
    let tipPercentages = [10,15,20,25,0]
    
   
    var body: some View {
        NavigationView{
            Form{
                Section{
                    TextField("Amount", text: $checkAmount)
                        .keyboardType(.decimalPad)
                    
                    TextField("Number of people", text: $numberOfPeople)
                        .keyboardType(.numberPad)
                    
//                    Picker("Number of people", selection: $numberOfPeople){
//                        ForEach(2..<100){
//                            Text("\($0) people")
//                        }
//                    }
                }
                
                Section(header: Text("How much tip you want to leave?")){
                    Picker("Tip percentage", selection: $tipPercentage){
                        ForEach(0 ..< tipPercentages.count){
                            Text("\(self.tipPercentages[$0])%")
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                
                Section(header: Text("Total amount")){
                    Text("$\(totalAmount, specifier: "%.2f")")
                        .foregroundColor( tipPercentage == 4 ? .red : .black )
                }
                
                Section(header: Text("Amount per person")){
                    Text("$\(totalPerPerson, specifier: "%.2f")")
                }
            }.navigationBarTitle("WeSplit")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}





// Wieso @State vor var?

// Wie weiss i das bam textfield a text paramter nu ghert?

// Wieso navigation view für picker?

// Wie rausfindn was bei .pickerStyle alles geht

