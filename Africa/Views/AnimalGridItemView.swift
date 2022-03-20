//
//  AnimalGridItemView.swift
//  Africa
//
//  Created by Visarut Tippun on 20/3/22.
//

import SwiftUI

struct AnimalGridItemView: View {
    
    let animal: Animal
    
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct AnimalGridItemView_Previews: PreviewProvider {
    static let animals = AppData.animals
    static var previews: some View {
        AnimalGridItemView(animal: .preview)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
