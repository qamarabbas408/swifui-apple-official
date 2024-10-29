//
//  LandmarkDetailView.swift
//  Landmarks
//
//  Created by Siliconplex on 29/10/2024.
//

import SwiftUI

struct LandmarkDetailView: View {
    @Environment(ModelData.self) var modelData

    var landmark: Landmark

    var landmarkIndex: Int {
          modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
      }
    
    var body: some View {
        @Bindable var modelData = modelData

        ScrollView {
                MapView(coordinate: landmark.locationCoordinate)
                         .frame(height: 300)
                CircleImage(image: landmark.image)
                    .offset(y: -130)
                    .padding(.bottom, -130)
                
                VStack(alignment: .leading) {
                    HStack{
                        Text(landmark.name)
                                   .font(.title)
                        Spacer()
                        FavoriteButton(isSet:$modelData.landmarks[landmarkIndex].isFavorite)
                    }

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
    let modelData = ModelData()
      return LandmarkDetailView(landmark: modelData.landmarks[0])
          .environment(modelData)
}
