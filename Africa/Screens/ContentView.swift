//
//  ContentView.swift
//  Africa
//
//  Created by Visarut Tippun on 19/3/22.
//

import SwiftUI

struct ContentView: View {
    
    let animals: [Animal] = AppData.animals
    let haptics = UIImpactFeedbackGenerator(style: .medium)
    
    @State private var isGridViewActive: Bool = false
    
    @State private var gridLayout: [GridItem] = [.init(.flexible())]
    @State private var gridColumn: Int = 1
    @State private var toolbarIcon: String = "rectangle.grid.1x2"
    
    func gridSwitch() {
        gridLayout = Array(repeating: .init(.flexible()), count: gridLayout.count % 3 + 1)
        gridColumn = gridLayout.count
        switch gridColumn {
        case 2: toolbarIcon = "square.grid.2x2"
        case 3: toolbarIcon = "square.grid.3x2"
        default: toolbarIcon = "rectangle.grid.1x2"
        }
    }
    
    var body: some View {
        NavigationView {
            Group {
                if !isGridViewActive {
                    List {
                        CoverImageView()
                            .frame(height: 300)
                            .listRowInsets(.init())
                        
                        ForEach(animals) { animal in
                            NavigationLink {
                                AnimalDetailView(animal: animal)
                            } label: {
                                AnimalListItemView(animal: animal)
                            } //: NavigationLink
                        } //: ForEach
                        
                        CreditsView()
                            .modifier(CenterModifier())
                    } //: List
                    .listStyle(.plain)
                } else {
                    ScrollView(.vertical, showsIndicators: false) {
                        LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                            ForEach(animals) { animal in
                                NavigationLink {
                                    AnimalDetailView(animal: animal)
                                } label: {
                                    AnimalGridItemView(animal: animal)
                                } //: NavigationLink
                            }
                        } //: LazyVGrid
                    } //: ScrollView
                } //: Condition
            } //: Group
            
            .navigationTitle("Africa")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack(spacing: 16) {
                        Button {
                            isGridViewActive = false
                            haptics.impactOccurred()
                        } label: {
                            Image(systemName: "square.fill.text.grid.1x2")
                                .font(.title2)
                                .foregroundColor(isGridViewActive ? .primary : .accentColor)
                        }
                        Button {
                            if isGridViewActive {
                                gridSwitch()
                                haptics.impactOccurred()
                            } else {
                                isGridViewActive = true
                            }
                            
                        } label: {
                            Image(systemName: toolbarIcon)
                                .font(.title2)
                                .foregroundColor(isGridViewActive ? .accentColor : .primary)
                        }
                    }
                }
            }
        } //: NavigationView
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
