//
//  Preview.swift
//  Africa
//
//  Created by Visarut Tippun on 19/3/22.
//

import Foundation
import MapKit

enum AppData {
    static let animals: [Animal] = Decoder.decode("animals.json")
    static let region: MKCoordinateRegion = .init(center: .init(latitude: 6.600286,
                                                                longitude: 16.4377599),
                                                  span: .init(latitudeDelta: 70.0,
                                                              longitudeDelta: 70.0))
    static let videos: [Video] = Decoder.decode("videos.json")
    static let nationalParkLocations: [NationalParkLocation] = Decoder.decode("locations.json")
}
