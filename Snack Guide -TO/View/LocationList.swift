//
//  LocationList.swift
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
