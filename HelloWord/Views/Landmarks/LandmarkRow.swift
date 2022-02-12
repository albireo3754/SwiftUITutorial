//
//  LandmarkRow.swift
//  HelloWord
//
//  Created by 윤상진 on 2022/02/09.
//

import SwiftUI
import Combine

class Rand: ObservableObject {
    @Published var random = "\((1...1000).randomElement())"
}
struct LandmarkRow: View {
    var landmark: Landmark
    @ObservedObject private var random = Rand()
//    @StateObject private var random = Rand()
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
//            Text(landmark.name)
            Text(random.random)
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarks[0])
                .previewLayout(.fixed(width: 300, height: 70))
            LandmarkRow(landmark: landmarks[1])
                .previewLayout(.fixed(width: 300, height: 70))
        }
    }
}
