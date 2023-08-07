//
//  LocationList.swift
//  Snack Guide -TO
//
//  Created by Binh Ngo Chi on 07/08/2023.
//

import SwiftUI

struct LocationList: View {
    var body: some View {
        NavigationView {
            List(locations) {
                location in
                NavigationLink {
                    LocationCard(location: location)
                } label: {
                    LocationRow(location: location)
                }
                .navigationTitle("Snack Locations")
            }
        }
    }
}

struct LocationList_Previews: PreviewProvider {
    static var previews: some View {
        LocationList()
    }
}
