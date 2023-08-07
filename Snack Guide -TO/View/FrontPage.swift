//
//  ContentView.swift
//  Snack Guide -TO            zzv `//
//  Created by Will Ngo on 2023-08-05.
//

import SwiftUI

struct FrontPage: View {
    
    @State var isExpanded = false
    @State var showingInfo = false
    @State var subviewHeight : CGFloat = 0
    
    var body: some View {
        VStack {
            HStack{
                Spacer()
                Button("i"){
                    showingInfo = true
                }
                .alert(isPresented: $showingInfo){
                    Alert(title: Text("Author"), message: Text("Ngo Chi Binh \n s3938145 \n BP162"), dismissButton: .default(Text("OK")))
                }
            }
            Spacer()
            
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

            }, label: {
                Text("Start Snacking")
                    .font(.largeTitle)
                    .foregroundColor(.white
                    ).padding()
                        .background(Rectangle()
                            .foregroundColor(.green))
                        .cornerRadius(10)
            })
            Spacer()
        }
        .padding()

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FrontPage()
    }
}
