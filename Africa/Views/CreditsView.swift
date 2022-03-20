//
//  CreditsView.swift
//  Africa
//
//  Created by Visarut Tippun on 20/3/22.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)
            
            Text("""
    Copy right © Knot / knottx
    All right reserved
    """)
            .font(.footnote)
        .multilineTextAlignment(.center)
        } //: VStack
        .padding()
        .opacity(0.6)
    }
}

struct CreditsVIew_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
