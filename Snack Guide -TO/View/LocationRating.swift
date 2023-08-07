//
//  LocationRating.swift
//  Snack Guide -TO
//
//  Created by Will Ngo on 2023-08-07.
//

import SwiftUI

struct LocationRating: View {
    let rating: String
    var body: some View {
        HStack {
            Section {
                Text(rating)
                    .foregroundColor(.green)
                .font(.system(size: 20))
                Image("star")
                    .resizable()
                    .frame(width: 20, height: 20)
            }
            .padding(.horizontal, -4)
        }
    }
}

struct LocationRating_Previews: PreviewProvider {
    static var previews: some View {
        LocationRating(rating: "4.5")
    }
}
