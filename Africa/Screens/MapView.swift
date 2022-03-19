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
            
            //            MapAnnotation(coordinate: item.location) {
            //                Image("logo")
            //                    .resizable()
            //                    .scaledToFit()
            //                    .frame(width: 32, height: 32, alignment: .center)
            //            } //: MapAnnotation
            
            MapAnnotation(coordinate: item.location) {
                MapAnnotationView(location: item)
            } //: MapAnnotation
        } //: Map
        .overlay(
            HStack(alignment: .center, spacing: 12) {
                Image("compass")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48, height: 48, alignment: .center)
                
                VStack(alignment: .leading, spacing: 3) {
                    HStack {
                        Text("Latitude")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.latitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                    } //: HStack
                    
                    Divider()
                    
                    HStack {
                        Text("Longitude")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.longitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                    } //: HStack
                } //: VStack
            } //: HStack
                .padding(.vertical, 12)
                .padding(.horizontal, 16)
                .background(
                    Color.black
                        .cornerRadius(8)
                        .opacity(0.6)
                )
                .padding()
            , alignment: .top
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
