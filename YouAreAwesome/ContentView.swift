//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Robert Marks on 3/24/26.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    @State private var imageNumber = 0
    @State private var messageNumber = 0
    var body: some View {
        let messages: [String] = ["You're Awesome",
                                  "When the Genius Bar Needs Help, They Call You!",
                                  "Gadzooks my friend, I am astonished at how utterly magnificent you are",
                                 "You're Great",
                                 "You're Fantastic",
                                 "You're Incredible",
                                 "You're Amazing",
                                 "You're Super"]
        VStack {
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                .multilineTextAlignment(.center)
                .minimumScaleFactor(0.5)
                .frame(height: 100)
                .animation(.easeInOut(duration: 0.15), value: message)
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
                .animation(.default, value: imageName)
            
            
            
            Spacer()
            
            Button("Show Message") {

                if !messages.isEmpty {
                    message = messages[messageNumber]
                    messageNumber = (messageNumber == (messages.count - 1) ? 0 : messageNumber + 1)
                }
                imageName = "image\(imageNumber)"
                imageNumber = (imageNumber == 9 ? 0 : imageNumber + 1)
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
