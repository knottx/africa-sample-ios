//
//  CoverImageView.swift
//  Africa
//
//  Created by Visarut Tippun on 19/3/22.
//

import SwiftUI

struct CoverImageView: View {
    
    let covers: [CoverImage] = Decoder.decode("covers.json")
    
    var body: some View {
        TabView {
            ForEach(covers) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            }
        } //: TabView
        .tabViewStyle(.page)
    }
}

struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
