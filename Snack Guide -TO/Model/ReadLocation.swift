//
//  ReadLocation.swift
//  Snack Guide -TO
//
//  Created by Binh Ngo Chi on 07/08/2023.
//

import Foundation

var locations = decodeJson(jsonFileName: "locations.json")

func decodeJson(jsonFileName: String) -> [Location] {
    if let file = Bundle.main.url(forResource: jsonFileName, withExtension: nil) {
        if let data = try? Data(contentsOf: file) {
            do {
                let decoder = JSONDecoder()
                let decoded = try decoder.decode([Location].self, from: data)
                return decoded
            } catch let error {
                fatalError("Failed to decode JSON: \(error)")
            }
        }
    } else {
        fatalError("Couldn't load \(jsonFileName) file")
    }
    return [ ] as [Location]
}
