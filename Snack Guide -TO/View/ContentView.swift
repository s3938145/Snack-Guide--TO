//
//  ContentView.swift
//  Snack Guide -TO            zzv `//
//  Created by Will Ngo on 2023-08-05.
//

import SwiftUI
 
struct ContentView: View {
    
    @State var showingInfo = false
    @State var theColorScheme: ColorScheme = .dark
    @Environment(\.colorScheme) var colorScheme
    
    func toggleColorScheme() {
        theColorScheme = (theColorScheme == .dark) ? .light : .dark
    }
    
    var body: some View {
            
            NavigationView {
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
                        Button {
                            showingInfo = true
                        } label: {
                            Image("info")
                                .resizable()
                                .frame(width: 30, height: 30)
                        }
                        .alert(isPresented: $showingInfo){
                            Alert(title: Text("Author"), message: Text("Ngo Chi Binh \n s3938145 \n BP162"), dismissButton: .default(Text("OK")))
                        }
                    }
                    .padding(.horizontal)
                    Spacer()
                    Image("nacho")
                        .resizable()
                        .frame(width: 200, height: 200)
                        .imageScale(.large)
                        .foregroundColor(.accentColor)
                    Text("SNACK GUIDE")
                        .font(
                            .custom("AmericanTypeWriter",
                                   fixedSize: 34)
                            .weight(.semibold)
                        )
                    Text("Your guide to delicious snacks")
                        .font(
                            .custom("AmericanTypeWriter",
                                   fixedSize: 24)
                            .weight(.light)
                        )
                    
                    HStack{
                        Text("Location -")
                        Text("Dowtown Toronto,")
                        Text("Canada")
                    }
                    .padding()
                    NavigationLink(destination: LocationList()) {
                        Text("Start Snacking")
                            .font(
                                .custom("AmericanTypeWriter",
                                       fixedSize: 20)
                                .weight(.bold)
                            )
                            .foregroundColor(.primary)
                            .padding()
                            .background(colorScheme == .dark ? Color.blue.cornerRadius(10) : Color.green.cornerRadius(10))
                            .navigationBarTitle("")
                            .navigationBarHidden(true)
                    }
                    Spacer()
                }
            }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
