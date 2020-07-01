//
//  ContentView.swift
//  WeSplit
//
//  Created by Abdelrahman Mohamed on 30.06.2020.
//

import SwiftUI

struct ContentView: View {

    let gender = ["Male", "Female"]
    @State private var selectedGender = "Male"
    @State private var tapCount = 0
    @State private var name = ""

    var body: some View {

        NavigationView {
            Form {
                Group {
                    Text("Hello, world!").padding()
                }

                Section {
                    TextField("Enter your name", text: $name)
                        .padding(.all, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    Text("Your name is \(name)")
                        .padding()
                }

                Picker("Select Gender", selection: $selectedGender) {
                    ForEach(0 ..< gender.count) {
                        Text(self.gender[$0])
                    }
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                }

                Button("Tap Count:  \(tapCount)") {
                    self.tapCount += 1
                }
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
