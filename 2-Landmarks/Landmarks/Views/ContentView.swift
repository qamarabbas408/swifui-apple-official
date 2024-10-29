//
//  ContentView.swift
//  Landmarks
//
//  Created by Siliconplex on 29/10/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        VStack {
////            Image(systemName: "globe")
////                .imageScale(.large)
////                .foregroundStyle(.tint)
//            Text("Hello, world!")
//        }
//        .padding()
        VStack {
            MapView()
                     .frame(height: 300)
            CircleImage()    
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                                .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                } .font(.subheadline)
                    .foregroundStyle(.secondary)
                Divider()
                Text("About Turtle Rock")
                                   .font(.title2)
              Text("Descriptive text goes here.")
                
            }
            .padding()
        }
        Spacer()
        

    }
}

#Preview {
    ContentView()
}
