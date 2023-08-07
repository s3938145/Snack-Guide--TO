//
//  LocationRow.swift
//  Snack Guide -TO
//
//  Created by Binh Ngo Chi on 07/08/2023.
//

import SwiftUI

struct LocationRow: View {
    
    var location: Location
    
    var body: some View {
        HStack{
            location.image
                .resizable()
                .frame(width: 70, height: 70)
            VStack(alignment: .leading){
                Text(location.name)
                HStack{
                    Text(location.rating)
                        .foregroundColor(.green)
                    Image("star")
                        .resizable()
                        .frame(width: 20, height: 20)
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
