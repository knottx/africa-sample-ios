//
//  HeadingView.swift
//  Africa
//
//  Created by Visarut Tippun on 19/3/22.
//

import SwiftUI

struct HeadingView: View {
    var imageName: String
    var title: String
    
    var body: some View {
        HStack {
            Image(systemName: imageName)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            
            Text(title)
                .font(.title3)
                .fontWeight(.bold)
        } //: HStack
    }
}

struct HeadingView_Previews: PreviewProvider {
    static var previews: some View {
        HeadingView(imageName: "photo.on.rectangle.angled",
                    title: "Wilderness in Pictures")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
