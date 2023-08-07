//
//  LocationDetails.swift
//  Snack Guide -TO
//
//  Created by Binh Ngo Chi on 07/08/2023.
//

import SwiftUI

struct LocationDetails: View {
    
    let text: String
    let rating: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 400)
            .overlay(
                VStack {
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
                    ScrollView(.vertical) {
                        Text(text)
                            .foregroundColor(.black)
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
                LocationDetails(text: "St Lawrence Market", rating: "4.5", imageName: "Le Gourmand" )
            }
        }
        LocationDetails(text: "St Lawrence Market", rating: "4.5", imageName: "Le Gourmand")
            .previewLayout(.sizeThatFits)
    }
}
