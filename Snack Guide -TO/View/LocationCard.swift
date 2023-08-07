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
            Color(.blue)
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
                        .foregroundColor(.white)
                    Text(location.address.streetName)
                        .foregroundColor(.white)
                    LocationDetails(text: location.description, rating: location.rating, imageName: location.img)
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
