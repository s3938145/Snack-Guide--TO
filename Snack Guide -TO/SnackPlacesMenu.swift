//
//  SnackPlacesMenu.swift
//  Snack Guide -TO
//
//  Created by Binh Ngo Chi on 07/08/2023.
//

import SwiftUI

struct SnackPlacesMenu: View {
    
    var body: some View {
        
        
        NavigationStack {
            List{
                Text("Location 1")
                Text("Location 2")
                Text("Location 3")
            }
            .navigationTitle("Locations")
        }
        
        
    }
}

struct SnackPlacesMenu_Previews: PreviewProvider {
    static var previews: some View {
        SnackPlacesMenu()
    }
}
