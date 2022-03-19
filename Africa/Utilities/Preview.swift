//
//  Preview.swift
//  Africa
//
//  Created by Visarut Tippun on 19/3/22.
//

import Foundation
import MapKit

enum Data {
    static let animals: [Animal] = Decoder.decode("animals.json")
    static let region: MKCoordinateRegion = .init(center: .init(latitude: 6.600286, longitude: 16.4377599),
                                                  span: .init(latitudeDelta: 60.0, longitudeDelta: 60.0))
}
