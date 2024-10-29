//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Siliconplex on 29/10/2024.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationSplitView {
                 List(landmarks) { landmark in
//                     LandmarkRow(landmark: landmark)
                     NavigationLink {
                                        LandmarkDetailView(landmark: landmark)
                                    } 
                 label: {
                      LandmarkRow(landmark: landmark)
                    }
                 }
                 .navigationTitle("Landmarks")
             } detail: {
                 Text("Select a Landmark")
             }
        
    }
}

#Preview {
    LandmarkList()
}
