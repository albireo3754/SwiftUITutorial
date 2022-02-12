//
//  HelloWordApp.swift
//  HelloWord
//
//  Created by 윤상진 on 2022/02/08.
//

import SwiftUI

@main
struct HelloWordApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
