//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Siliconplex on 29/10/2024.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
            List(landmarks) { landmark in
                LandmarkRow(landmark: landmark)
                  }
        
    }
}

#Preview {
    LandmarkList()
}
