//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Robert Marks on 3/24/26.
//

import SwiftUI

struct ContentView: View {
    @State private var message = "I Am A Programmer!"
    var body: some View {
        VStack {
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            Text(message)
                .font(.largeTitle)
                .foregroundStyle(.red)
                .padding()
            Button("Click me!") {
                message = "Awesome!"
            }

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
