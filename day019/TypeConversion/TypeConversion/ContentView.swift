//
//  ContentView.swift
//  TypeConversion
//
//  Created by Manuel Burgschachner on 02.11.20.
//

import SwiftUI

struct ContentView: View {
    
    @State private var distanceText = ""
    @State private var types = ["mm","cm","dm","m","km"]
    @State private var typeFrom = 2 // start type in Picker
    @State private var typeTo = 2 // start type in Picker
    

    var fromDistance: Double {
        // calculate the input distance to mm

        let distance = Double(distanceText) ?? 0

        switch typeFrom {
        case 0:
            return distance

        case 1:
            return distance*10
        case 2:
            return distance*100
        case 3:
            return distance*1000
        case 4:
            return distance*10000
        default:
            return 0
        }
    }
    
//    var fromDistance: Measurement<Unit> {
//            // calculate the input distance to mm
//
//            let distance = Double(distanceText) ?? 0
//
//            switch typeFrom {
//            case 0:
//                return Measurement(value: distance, unit: UnitLength.millimeters)
//            case 1:
//                return Measurement(value: distance, unit: UnitLength.decimeters)
//            case 2:
//                return Measurement(value: distance, unit: UnitLength.centimeters)
//            case 3:
//                return Measurement(value: distance, unit: UnitLength.meters)
//            case 4:
//                return Measurement(value: distance, unit: UnitLength.kilometers)
//            default:
//                return Measurement(value: distance, unit: UnitLength.millimeters)
//            }
//        }
    
//    var divider: Double {
//        switch typeTo {
//        case 0:
//            return 1
//
//        case 1:
//            return 10
//        case 2:
//            return 100
//        case 3:
//            return 1000
//        case 4:
//            return 1000000
//        default:
//            return 0
//        }
//
//    }
    
    
    
    var body: some View {
        
        NavigationView{
        
            Form{
                Section(header: Text("Input")){
                    TextField("Enter distance", text: $distanceText)
                        .keyboardType(.decimalPad)
                }
                
                Section(header: Text("From")){
                    Picker("Select source type", selection: $typeFrom){
                        ForEach(0 ..< types.count){
                            Text("\(self.types[$0])")
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                }
                Section(header: Text("To")){
                    Picker("Select destination type", selection: $typeTo){
                        ForEach(0 ..< types.count){
                            Text("\(self.types[$0])")
                        }

                    }.pickerStyle(SegmentedPickerStyle())
                }
                Section(header: Text("Output")){
                    Text("\(fromDistance/divider,specifier: "%.2f")")
                }
            }.navigationBarTitle("Type Conversion")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
