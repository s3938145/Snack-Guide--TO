//
//  LocationList.swift
//  Snack Guide -TO
//
//  Created by Binh Ngo Chi on 07/08/2023.
//

import SwiftUI

struct LocationList: View {
    @State var searchText = ""
    var filteredLocations: [Location] {
        if searchText.isEmpty {
            return locations
        } else {
            return locations.filter {
                $0.name.localizedCaseInsensitiveContains(searchText)
            }
        }
    }
    
    enum SearchScopeOption {
        case all
        case type(option: SnackType)
        
        var title: String {
            switch self {
            case .all:
                return "All"
            case .type(option: let option):
                return option.rawValue.capitalized
            }
        }
    }
    
    var body: some View {
        NavigationView {
            List(filteredLocations) {
                location in
                NavigationLink {
                    LocationCard(location: location)
                } label: {
                    LocationRow(location: location)
                }
                .navigationTitle("Snack Locations")
            }.searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always),prompt: "Search for your favourite snack place")
        }
    }
}

struct LocationList_Previews: PreviewProvider {
    static var previews: some View {
        LocationList()
    }
}
