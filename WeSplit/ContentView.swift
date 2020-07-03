//
//  ContentView.swift
//  WeSplit
//
//  Created by Abdelrahman Mohamed on 30.06.2020.
//

import SwiftUI

struct ContentView: View {

//    let gender = ["Male", "Female"]
//    @State private var selectedGender = "Male"
//    @State private var tapCount = 0
//    @State private var name = ""

    @State private var checkAmount = ""
    @State private var numberOfPepole = 2
    @State private var tipPercentage = 2

    let tipPercentages = [10, 15, 20, 25, 0]

    var totalPerPerson: Double {

        let pepoleCount = Double(numberOfPepole + 2)
        let tipSelection = Double(tipPercentages[tipPercentage])
        let orderAmount = Double(checkAmount) ?? 0

        let tipValue = orderAmount / 100 * tipSelection
        let grandTotal = orderAmount + tipValue
        let amountPerPerson = grandTotal / pepoleCount

        return amountPerPerson
    }

    var body: some View {

        NavigationView {
            Form {
                Section {
                    TextField("Amont", text: $checkAmount)
                        .keyboardType(.decimalPad)
                    Picker("Number of pepole", selection: $numberOfPepole) {
                        ForEach(2 ..< 101) {
                            Text("\($0) pepole")
                        }
                    }
                }

                Section(header: Text("How much tip do you want to leave?")) {
                    Picker("Tip percentage", selection: $tipPercentage) {
                        ForEach(0 ..< tipPercentages.count) {
                            Text("\(self.tipPercentages[$0])%")
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }

                Section {
                    Text("₺ \(totalPerPerson, specifier: "%.2f")")
                }
            }
            .navigationBarTitle("WeSplit")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
