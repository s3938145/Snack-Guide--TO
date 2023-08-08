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

struct LocationRow: View {
    
    var location: Location
    
    var body: some View {
        HStack{
            location.image
                .resizable()
                .frame(width: 90, height: 90)
            VStack(alignment: .leading){
                Text(location.name)
                HStack{
                    Text(location.rating)
                        .foregroundColor(.green)
                    Image("star")
                        .resizable()
                        .frame(width: 20, height: 20)
                    }
                HStack {
                    Text(location.type.rawValue)
                            .font(.system(size: 14))
                            .padding(5)
                            .background(Color.gray.cornerRadius(20))
                }
            }
        }
    }
}

struct LocationRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LocationRow(location: locations[0])
                .previewLayout(.fixed(width: 400, height: 80))
            LocationRow(location: locations[1])
                .previewLayout(.fixed(width: 400, height: 80))
        }
    }
}
