//
//  ContentView.swift
//  HelloWord
//
//  Created by 윤상진 on 2022/02/08.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .featured
    
    enum Tab: String {
        case featured = "hi"
        case list = "bye"
    }

    var body: some View {
        TabView(selection: $selection) {
            LandmarkList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(selection)
//            Text(selection)
            CategoryHome()
                .tabItem {
                    Label(Tab.list.rawValue, systemImage: "star")
                }
//                .tag(selection)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ModelData())
    }
}
