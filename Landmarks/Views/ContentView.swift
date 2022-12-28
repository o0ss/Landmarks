//
//  ContentView.swift
//  Landmarks
//
//  Created by Oscar Sixtos on 25/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
            .preferredColorScheme(.dark)
    }
}
