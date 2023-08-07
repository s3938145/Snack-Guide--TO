//
//  LocationDetails.swift
//  Snack Guide -TO
//
//  Created by Binh Ngo Chi on 07/08/2023.
//

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
