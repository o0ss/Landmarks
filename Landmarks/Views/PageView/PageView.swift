//
//  PageView.swift
//  Landmarks
//
//  Created by Oscar Sixtos on 28/12/22.
//

import SwiftUI

struct PageView<Page: View>: View {
    var pages: [Page]
    @State var currentPage = 0
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            PageViewController(pages: pages, currentPage: $currentPage)
            PageControl(numberOfPages: pages.count, currentPage: $currentPage)
                .frame(width: CGFloat(pages.count * 18))
                .padding(.trailing)
//            Button {
//                currentPage = (currentPage + 2) % 3
//            } label: {
//                Text("Prev")
//            }
//            .padding(.top)
//            Button {
//                currentPage = (currentPage + 1) % 3
//            } label: {
//                Text("Next")
//            }
//            .padding(.top)
        }
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(pages: ModelData().features.map {FeatureCard(landmark: $0)})
            .aspectRatio(1.5, contentMode: .fit)
    }
}
