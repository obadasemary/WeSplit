//
//  ContentView.swift
//  WeSplit
//
//  Created by Abdelrahman Mohamed on 30.06.2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        NavigationView {
            Form {
                Group {
                    Text("Hello, world!").padding()
                    Text("Hello, world!").padding()
                    Text("Hello, world!").padding()
                    Text("Hello, world!").padding()
                    Text("Hello, world!").padding()
                    Text("Hello, world!").padding()
                }

                Section {
                    Text("Hello, world!").padding()
                    Text("Hello, world!").padding()
                    Text("Hello, world!").padding()
                    Text("Hello, world!").padding()
                    Text("Hello, world!").padding()
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
