/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2023B
  Assessment: Assignment 1
  Author: Ngo Chi Binh
  ID: s3938145
  Created  date: 05/08/2023 (e.g. 31/07/2023)
  Last modified: 08/08/2023 (e.g. 05/08/2023)
  Acknowledgement: I acknowledge the use of the following external resource:
    S. Wongpatcharapakorn, “Searchable modifier in swiftui: A uisearchcontroller and UISearchBar equivalent,” Sarunw, https://sarunw.com/posts/searchable-in-swiftui/ (accessed Aug. 8, 2023).
 
    T. Huynh, “TOMHUYNHSG/SSET-Contact-List-IOS: RMIT SSET Contact list IOS app!,” GitHub, https://github.com/TomHuynhSG/SSET-Contact-List-iOS (accessed Aug. 8, 2023).
 
    “Swiftui,” Apple Developer Documentation, https://developer.apple.com/documentation/swiftui (accessed Aug. 8, 2023).
*/

import Foundation
import SwiftUI
import CoreLocation

struct Location: Identifiable, Codable {
    var id: Int
    var name: String
    var img: String
    var image: Image {Image(img)}
    var type: SnackType
    var rating: String
    var address: Address
    var hours: String
    var description: String
    var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
}

enum SnackType: String, Codable, CaseIterable, Identifiable {
    
    case Sweet = "Sweet"
    case Savoury = "Savoury"
    case Drink = "Drink"
    
    var id: String {rawValue}
}

struct Address: Codable {
    var number: Int?
    var streetName: String

    enum CodingKeys: String, CodingKey {
        case number
        case streetName = "street name"
    }
}

struct Coordinates: Codable {
    var latitude, longitude: Double
}


