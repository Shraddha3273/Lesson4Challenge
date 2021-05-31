//
//  ContentView.swift
//  Lesson 4 Challenge
//
//  Created by Shraddha on 31/05/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
        // Stacks containing the two images
        VStack {
        
            // CN Tower image
            ZStack {
                Image("toronto")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                
                // VStack for the text
                VStack(alignment: .center) {
                    Text("CN Tower")
                        .font(.largeTitle)
                        .padding([.top, .leading, .trailing])
                        
                    Text("Toronto")
                        .font(.caption)
                        .padding([.leading, .bottom, .trailing])
                }
                // These modifiers are apply to the VStack only
                .background(Color.black)
                .opacity(0.8)
                .cornerRadius(10)
                // This modifier apply to aeverything else in the VStack
                .foregroundColor(Color.white)
                
            }.padding()
            
            // Big Ben card
            ZStack {
                Image("london")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                
                // VStack for the text
                VStack(alignment: .center) {
                    Text("Big Ben")
                        .font(.largeTitle)
                        .padding([.top, .leading, .trailing])
                        
                    Text("London")
                        .font(.caption)
                        .padding([.leading, .bottom, .trailing])
                }
                // These modifiers are apply to the VStack only
                .background(Color.black)
                .opacity(0.8)
                .cornerRadius(10)
                // This modifier apply to everything in the VStack
                .foregroundColor(Color.white)
                
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
