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
