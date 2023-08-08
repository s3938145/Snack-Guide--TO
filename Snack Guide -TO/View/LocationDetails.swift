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

struct LocationDetails: View {
    
    let text: String
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(colorScheme == .dark ? Color.black : Color.white)
            .frame(height: 400)
            .overlay(
                VStack(alignment: .center) {
                    ScrollView(.vertical) {
                        Text(text)
                            .foregroundColor(.primary)
                            .padding(.top)
                    }
                    Spacer()
                }.padding(.all, 10))
            .padding(.all)
    }
}

struct LocationDetails_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(.blue)
                .edgesIgnoringSafeArea(.all)
            VStack{
                LocationDetails(text: "St Lawrence Market")
            }
        }
        LocationDetails(text: "St Lawrence Market")
            .previewLayout(.sizeThatFits)
    }
}
