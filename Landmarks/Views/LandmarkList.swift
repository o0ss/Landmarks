//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Oscar Sixtos on 25/12/22.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail()
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
        }
        .navigationTitle("Landmarks")
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            
    }
}
