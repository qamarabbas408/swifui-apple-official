//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Siliconplex on 29/10/2024.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavoritesOnly = false
    @Environment(ModelData.self) var modelData
    
    var filteredLandmarks : [Landmark] {
        modelData.landmarks.filter{
            landmark in  (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView {
            Toggle(isOn: $showFavoritesOnly) {
                              Text("Favorites only")
                          }
            List {
                           ForEach(filteredLandmarks) { landmark in
                               NavigationLink {
                                   LandmarkDetailView(landmark: landmark)
                               } label: {
                                   LandmarkRow(landmark: landmark)
                               }
                           }
                       }
            
//                 List(isFilteredLandmarks) { landmark in
////                     LandmarkRow(landmark: landmark)
//                     NavigationLink {
//                                        LandmarkDetailView(landmark: landmark)
//                                    } 
//                 label: {
//                      LandmarkRow(landmark: landmark)
//                    }
//                 }
            
            .animation(.default, value:filteredLandmarks)
                 .navigationTitle("Landmarks")
             } detail: {
                 Text("Select a Landmark")
             }
        
    }
}

#Preview {
    LandmarkList().environment(ModelData())
}
