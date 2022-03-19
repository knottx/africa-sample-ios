//
//  MapView.swift
//  Africa
//
//  Created by Visarut Tippun on 19/3/22.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @State private var region = AppData.region
    
    let locations: [NationalParkLocation] = AppData.nationalParkLocations
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: locations) { item in
//            MapPin(coordinate: item.location, tint: .accentColor)
            
//            MapMarker(coordinate: item.location, tint: .accentColor)
            
            MapAnnotation(coordinate: item.location) {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32, alignment: .center)
            } //: MapAnnotation
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
