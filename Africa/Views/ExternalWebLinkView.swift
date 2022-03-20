//
//  ExternalWebLinkView.swift
//  Africa
//
//  Created by Visarut Tippun on 19/3/22.
//

import SwiftUI

struct ExternalWebLinkView: View {
    
    let animal: Animal
    
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group {
                    Image(systemName: "arrow.up.right.square")
                    
                    Link(destination: URL(string: animal.link)!) {
                        Text(animal.name)
                    }
                }
                .foregroundColor(.accentColor)
            } //: HStack
        } //: GroupBox
    }
}

struct ExternalWebLinkView_Previews: PreviewProvider {
    static let animals = AppData.animals
    
    static var previews: some View {
        ExternalWebLinkView(animal: .preview)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
