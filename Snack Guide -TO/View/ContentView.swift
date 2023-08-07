//
//  ContentView.swift
//  Snack Guide -TO            zzv `//
//  Created by Will Ngo on 2023-08-05.
//

import SwiftUI
 
struct ContentView: View {
    
    @State var showingInfo = false
    @State var theColorScheme: ColorScheme = .dark
    
    func toggleColorScheme() {
        theColorScheme = (theColorScheme == .dark) ? .light : .dark
    }
    
    var body: some View {
        VStack {
            HStack{
                Button(action: self.toggleColorScheme) {
                    if(theColorScheme == .dark) {
                        Text("Light Mode")
                            .padding(5)
                            .background(Color.primary.cornerRadius(10.0))
                    } else {
                        Text("Dark Mode")
                            .padding(5)
                            .background(Color.primary.cornerRadius(10.0))
                    }

                }
                .preferredColorScheme(theColorScheme)
                
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
            
            Button(action: {}, label: {
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
        ContentView()
    }
}
