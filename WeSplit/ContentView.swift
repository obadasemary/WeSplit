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
    @State private var tipPercentage = ""

    let tipPercentages = [20, 15, 30 ,60 ,45, 0]

    var body: some View {

        NavigationView {
            Form {
                Section {
                    TextField("Amont", text: $checkAmount)
                        .keyboardType(.decimalPad)
                }

                Picker("Number of pepole", selection: $numberOfPepole) {
                    ForEach(1 ..< 100) {
                        Text("\($0) pepole")
                    }
                }

                Section {
                    Text("$\(checkAmount)")
                }
//
//                Picker("Select Gender", selection: $selectedGender) {
//                    ForEach(0 ..< gender.count) {
//                        Text(self.gender[$0])
//                    }
//                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
//                }
//
//                Button("Tap Count:  \(tapCount)") {
//                    self.tapCount += 1
//                }
            }
            .navigationBarTitle(Text("WeSplit"), displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
