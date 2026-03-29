//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Robert Marks on 3/24/26.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageString = ""
    @State private var isShowingSun = true
    var body: some View {
        
        VStack {
            Spacer()
            Image(systemName: imageString)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
            
            Spacer()
            
            Button("Press Me!") {
                let awesomeMessage = "You are Awesome!"
                let greatMessage = "You are Great!"
                
                if isShowingSun {
                    imageString = "sun.max.fill"
                    message = awesomeMessage
                } else {
                    imageString = "hand.thumbsup"
                    message = greatMessage
                }
                isShowingSun.toggle()
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.orange)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
