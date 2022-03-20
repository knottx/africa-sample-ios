//
//  CenterModifier.swift
//  Africa
//
//  Created by Visarut Tippun on 20/3/22.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        } //: HStack
    }
}

