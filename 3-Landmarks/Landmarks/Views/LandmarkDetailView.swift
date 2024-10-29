//
//  LandmarkDetailView.swift
//  Landmarks
//
//  Created by Siliconplex on 29/10/2024.
//

import SwiftUI

struct LandmarkDetailView: View {
    var landmark: Landmark

    var body: some View {
        ScrollView {
                MapView(coordinate: landmark.locationCoordinate)
                         .frame(height: 300)
                CircleImage(image: landmark.image)
                    .offset(y: -130)
                    .padding(.bottom, -130)
                
                VStack(alignment: .leading) {
                    Text(landmark.name)
                               .font(.title)
                    HStack {
                        Text(landmark.park)
                                         Spacer()
                                         Text(landmark.state)
                    } .font(.subheadline)
                        .foregroundStyle(.secondary)
                    Divider()
                    Text("About \(landmark.name)")
                                       .font(.title2)
                    Text(landmark.description)
                    
                }
                .padding()
            
        }
//        Spacer()
    }
}

#Preview {
    LandmarkDetailView(landmark: landmarks[0])

}
