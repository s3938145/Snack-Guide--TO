//
//  LocationProfile.swift
//  Snack Guide -TO
//
//  Created by Binh Ngo Chi on 07/08/2023.
//

import SwiftUI

struct LocationProfileImage: View {
    
    var image: Image
    
    var body: some View {
        image
            .resizable()
            .frame(width: 200, height: 200)
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color(.white), lineWidth: 4))
            .shadow(radius: 7)
    }
}

struct LocationProfileImage_Previews: PreviewProvider {
    static var previews: some View {
        LocationProfileImage(image: Image("Le Gourmand"))
    }
}
