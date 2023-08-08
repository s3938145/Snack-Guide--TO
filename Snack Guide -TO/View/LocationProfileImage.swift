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
