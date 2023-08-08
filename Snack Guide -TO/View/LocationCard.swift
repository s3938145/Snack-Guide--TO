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

struct LocationCard: View {
    
    var location: Location
    
    var body: some View {
        ZStack {
            Color.clear
                .edgesIgnoringSafeArea(.bottom)
            ScrollView{
                VStack {
                    MapView(coordinate: location.locationCoordinate)
                        .edgesIgnoringSafeArea(.top)
                        .frame(height: 250)
                    LocationProfileImage(image: location.image)
                        .offset(y: -100)
                        .padding(.bottom, -100)
                    Text(location.name)
                        .font(.system(size: 40))
                        .bold()
                    HStack {
                        HStack {
                            Text(location.address.number?.description ?? "0")
                                .foregroundColor(.primary)
                            Text(location.address.streetName)
                                .foregroundColor(.primary)
                        }.padding(.horizontal)
                        Spacer()
                        LocationRating(rating: location.rating).padding(.horizontal)
                    }.padding(.bottom)
                    LocationExpandMenu(title: "Description", description: location.description).padding(.bottom)
                    LocationExpandMenu(title: "Hours", description: location.hours)
                }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LocationCard_Previews: PreviewProvider {
    static var previews: some View {
        LocationCard(location: locations[0])
    }
}
