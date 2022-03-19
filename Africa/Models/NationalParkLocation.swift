//
//  Location.swift
//  Africa
//
//  Created by Visarut Tippun on 19/3/22.
//

import SwiftUI
import MapKit

struct NationalParkLocation: Codable, Identifiable {
    let id: String
    let name: String
    let image: String
    let latitude: Double
    let longitude: Double
}

extension NationalParkLocation {
    var location: CLLocationCoordinate2D {
        return .init(latitude: latitude, longitude: longitude)
    }
}
