//
//  GalleryView.swift
//  Africa
//
//  Created by Visarut Tippun on 19/3/22.
//

import SwiftUI

struct GalleryView: View {
    
    let animals = AppData.animals
    let haptics = UIImpactFeedbackGenerator(style: .medium)
    
    @State private var selectedAnimal: Animal = .preview
    @State private var gridLayout: [GridItem] = [.init(.flexible())]
    @State private var gridColumn: Double = 3.0
    
    func gridSwitch() {
        gridLayout = Array(repeating: .init(.flexible()), count: Int(gridColumn))
    }
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 30) {
                Image(selectedAnimal.image)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                        .stroke(.white, lineWidth: 8)
                    )
                
                Slider(value: $gridColumn, in: 2...4, step: 1)
                    .padding(.horizontal)
                    .onChange(of: gridColumn) { newValue in
                        gridSwitch()
                    }
                
                LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                    ForEach(animals) { animal in
                        Image(animal.image)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .overlay(
                                Circle()
                                .stroke(.white, lineWidth: 1)
                            )
                            .onTapGesture {
                                selectedAnimal = animal
                                haptics.impactOccurred()
                            }
                    }
                } //: LazyVGrid
                .animation(.easeIn, value: gridLayout.count)
                .onAppear {
                    gridSwitch()
                }
            } //: VStack
        } //: ScrollView
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(MotionAnimationView())
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
