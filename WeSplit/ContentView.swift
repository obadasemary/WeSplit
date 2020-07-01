//
//  ContentView.swift
//  WeSplit
//
//  Created by Abdelrahman Mohamed on 30.06.2020.
//

import SwiftUI

struct ContentView: View {

    @State private var tapCount = 0
    @State private var name = ""

    var body: some View {

        NavigationView {
            Form {
                Group {
                    Text("Hello, world!").padding()
                    Text("Hello, world!").padding()
                    Text("Hello, world!").padding()
                }

                Section {
                    TextField("Enter your name", text: $name)
                        .padding(.all, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    Text("Your name is \(name)")
                        .padding()
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
