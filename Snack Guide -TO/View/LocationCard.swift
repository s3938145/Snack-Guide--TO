//
//  LocationCard.swift
//  Snack Guide -TO
//
//  Created by Binh Ngo Chi on 07/08/2023.
//

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
                                .foregroundColor(.white)
                            Text(location.address.streetName)
                                .foregroundColor(.white)
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
