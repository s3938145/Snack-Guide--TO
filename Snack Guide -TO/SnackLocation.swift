//
//  LocationList.swift
//  Snack Guide -TO
//
//  Created by Will Ngo on 2023-08-05.
//

import Foundation

struct SnackLocation: Identifiable, Codable {
    var id = UUID()
    var title: String
    var important: Bool
    
    init(title: String, important: Bool) {
        self.title = title
        self.important = important
    }
}

class SnackLocationStorage: ObservableObject {
    @Published var locations = [SnackLocation]() {
        didSet {
            UserDefaults.standard.set(try? PropertyListEncoder().encode(locations), forKey: "locations")
        }
    }
    
    init() {
        if let data = UserDefaults.standard.value(forKey: "locations") as? Data {
            if let userDefaultLocations = try? PropertyListDecoder().decode(Array<SnackLocation>.self, from: data) {
                locations = userDefaultLocations
            }
        }
    }
}
