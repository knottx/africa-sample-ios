//
//  InsetGalleryView.swift
//  Africa
//
//  Created by Visarut Tippun on 19/3/22.
//

import SwiftUI

struct InsetGalleryView: View {
    let animal: Animal
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 15) {
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(12)
                }
            } //: HStack
        } //: ScrollView
    }
}

struct InsetGalleryView_Previews: PreviewProvider {
    static let animals = AppData.animals
    
    static var previews: some View {
        InsetGalleryView(animal: .preview)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
