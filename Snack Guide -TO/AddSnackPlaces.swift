//
//  AddSnackPlaces.swift
//  Snack Guide -TO
//
//  Created by Will Ngo on 2023-08-05.
//

import SwiftUI

struct AddSnackPlaces: View {
    
    @State var locationTitle = ""
    @State var important = false
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var snackLocationStorage: SnackLocationStorage
    
    var body: some View {
        VStack{
            Text("Reccommend new Snack Places").font(.title).padding(.horizontal)
            List(){
                Section{
                    TextField("Ex. New Snack Location", text: $locationTitle)
                    Toggle(isOn:$important){
                        Text("Important Toggle")
                    }
                    HStack {
                        Spacer()
                        Button("Save") {
                            self.snackLocationStorage.locations.append(SnackLocation(title: self.locationTitle, important: self.important))
                            self.presentationMode
                                .wrappedValue.dismiss()
                        }.disabled(locationTitle.isEmpty)
                        Spacer()
                    }
                }
            }.listStyle(GroupedListStyle())
        }
        
    }
}

struct AddSnackPlaces_Previews: PreviewProvider {
    static var previews: some View {
        AddSnackPlaces().environmentObject(SnackLocationStorage())
    }
}
