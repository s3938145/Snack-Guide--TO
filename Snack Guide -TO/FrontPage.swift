//
//  ContentView.swift
//  Snack Guide -TO            zzv `//
//  Created by Will Ngo on 2023-08-05.
//

import SwiftUI

struct FrontPage: View {
    
    @EnvironmentObject var snackLocationStorage: SnackLocationStorage
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("SNACK GUIDE")
            Text("Your guide to delicious snacks")
            
            HStack{
                Text("Location -")
                Text("Dowtown Toronto,")
                Text("Canada")
            }
            .padding()
            
            Button(action: {
                print("Best snack location near you: St.Lawrence Market")
            }, label: {
                Text("Start Snacking")
                    .font(.largeTitle)
                    .foregroundColor(.white
                    ).padding()
                        .background(Rectangle()
                            .foregroundColor(.green))
                        .cornerRadius(10)
            })
            
        }
        .padding()
        
        NavigationView{
            List{
                ForEach(self.snackLocationStorage.locations)
                {todo in
                    
                    if todo.important {
                        Text(todo.title)
                            .bold()
                            .foregroundColor(.red)
                            .padding(4)
                            .background(Rectangle()
                                .foregroundColor(.yellow)
                                .cornerRadius(5))
                    }else {
                        Text(todo.title)
                    }
                }
            }.navigationBarTitle("Best Snack Places")
                .navigationBarItems(trailing: NavigationLink(destination: AddSnackPlaces()) {
                    Text("Add")
                })
        }

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FrontPage().environmentObject(SnackLocationStorage())
    }
}
