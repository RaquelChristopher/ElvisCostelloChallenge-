//
//  ContentView.swift
//  Elvis Costello Challenge #1
//
//  Created by Jedda Tuuta on 19/7/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var imageName = "peacesign"
    @State private var message = "Peace"
    
    
    // will change string name later to just have Parenthesis and no text so we can change for each button
    
    var body: some View {
       
        VStack {
            Text("What's So Funny 'Bout")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.purple)
            
            
            Spacer()
            
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.purple)
            
            Spacer()
            
            HStack{
                
                Button("Peace") {
                    message = "Peace"
                    imageName = "peacesign"
                }
                Button("Love") {
                    message = "Love"
                    imageName = "heart"
                }
                Button("Understanding") {
                   message = "Understanding"
                    imageName = "lightbulb"
                }
                
            }
            .tint(.purple)
            .buttonStyle(.borderedProminent)
            
            
        }
        
        .padding()
        
      
       
        
            
        
    }
}

#Preview {
    ContentView()
}
