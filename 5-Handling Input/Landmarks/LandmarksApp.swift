//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Siliconplex on 29/10/2024.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView().environment(modelData)
        }
    }
}
