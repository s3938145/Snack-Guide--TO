//
//  LocationList.swift
//  Snack Guide -TO
//
//  Created by Will Ngo on 2023-08-05.
//

import Foundation

//let snackLocations = try? JSONDecoder().decode(SnackLocations.self, from: jsonData)

// MARK: - SnackLocations
struct SnackLocations: Codable {
    let locations: [Location]
}

// MARK: - Location
struct Location: Codable {
    let id: Int
    let name: String
    let img: String
    let type: [String]
    let rating: Double
    let address: Address
}

// MARK: - Address
struct Address: Codable {
    let number: Int
    let streetName: String

    enum CodingKeys: String, CodingKey {
        case number
        case streetName = "street name"
    }
}

