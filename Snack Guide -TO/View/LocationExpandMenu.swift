//
//  LocationExpandMenu.swift
//  Snack Guide -TO
//
//  Created by Will Ngo on 2023-08-07.
//

import SwiftUI

struct LocationExpandMenu: View {
    @State var isExpanded = false
    @State var subviewHeight : CGFloat = 0
    
    let title: String
    let description: String
    
    var body: some View {
        VStack {
            Text(title)
            VStack {
                LocationDetails(text: description)
            }
        }
        .background(GeometryReader {
            Color.clear.preference(key: ViewHeightKey.self,
                                       value: $0.frame(in: .local).size.height)
        })
        .onPreferenceChange(ViewHeightKey.self) { subviewHeight = $0 }
        .frame(height: isExpanded ? subviewHeight : 30, alignment: .top)
        .padding()
        .clipped()
        .frame(maxWidth: .infinity)
        .transition(.move(edge: .bottom))
        .background(Color.gray.cornerRadius(10.0))
        .onTapGesture {
            withAnimation(.easeIn(duration: 0.5)) {
                isExpanded.toggle()
            }
        }
    }
}

struct ViewHeightKey: PreferenceKey {
    static var defaultValue: CGFloat { 0 }
    static func reduce(value: inout Value, nextValue: () -> Value) {
        value = value + nextValue()
    }
}

struct LocationExpandMenu_Previews: PreviewProvider {
    static var previews: some View {
        LocationExpandMenu(title: "Description",description: "St Lawrence Market")
    }
}
