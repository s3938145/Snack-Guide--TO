//
//  LocationList.swift
//  Snack Guide -TO
//
//  Created by Will Ngo on 2023-08-05.
//

import Foundation
import SwiftUI
import CoreLocation

struct Location: Identifiable, Codable {
    var id: Int
    var name: String
    var img: String
    var image: Image {Image(img)}
    var type: [String]
    var rating: String
    var address: Address
    var description: String
    var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
}

struct Address: Codable {
    var number: Int
    var streetName: String

    enum CodingKeys: String, CodingKey {
        case number
        case streetName = "street name"
    }
}

struct Coordinates: Codable {
    var latitude, longitude: Double
}


