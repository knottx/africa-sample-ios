//
//  InsetMapView.swift
//  Africa
//
//  Created by Visarut Tippun on 19/3/22.
//

import SwiftUI
import MapKit

struct InsetMapView: View {
    
    @State private var region: MKCoordinateRegion = AppData.region
    
    var body: some View {
        Map(coordinateRegion: $region)
            .overlay(
                NavigationLink {
                    MapView()
                } label: {
                    HStack {
                        Image(systemName: "mappin.circle")
                            .foregroundColor(.white)
                            .imageScale(.large)
                        
                        Text("Location")
                            .foregroundColor(.accentColor)
                            .fontWeight(.bold)
                    } //: HStack
                    .padding(.vertical, 10)
                    .padding(.horizontal, 14)
                    .background(
                        Color.black.opacity(0.4)
                            .cornerRadius(8)
                    )
                } //: NavigationLink
                    .padding(12)
                , alignment: .topTrailing
            )
            .frame(height: 256)
            .cornerRadius(12)
    }
}

struct InsetMapView_Previews: PreviewProvider {
    static var previews: some View {
        InsetMapView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
