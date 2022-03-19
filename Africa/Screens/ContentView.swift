//
//  ContentView.swift
//  Africa
//
//  Created by Visarut Tippun on 19/3/22.
//

import SwiftUI

struct ContentView: View {
    
    let animals: [Animal] = AppData.animals
    
    var body: some View {
        NavigationView {
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
            } //: List
            .navigationTitle("Africa")
            .navigationBarTitleDisplayMode(.large)
            .listStyle(.plain)
        } //: NavigationView
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
