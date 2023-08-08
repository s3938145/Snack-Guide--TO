/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2023B
  Assessment: Assignment 1
  Author: Ngo Chi Binh
  ID: s3938145
  Created  date: 05/08/2023 (e.g. 31/07/2023)
  Last modified: 08/08/2023 (e.g. 05/08/2023)
  Acknowledgement: I acknowledge the use of the following external resource:
    S. Wongpatcharapakorn, “Searchable modifier in swiftui: A uisearchcontroller and UISearchBar equivalent,” Sarunw, https://sarunw.com/posts/searchable-in-swiftui/ (accessed Aug. 8, 2023).
 
    T. Huynh, “TOMHUYNHSG/SSET-Contact-List-IOS: RMIT SSET Contact list IOS app!,” GitHub, https://github.com/TomHuynhSG/SSET-Contact-List-iOS (accessed Aug. 8, 2023).
 
    “Swiftui,” Apple Developer Documentation, https://developer.apple.com/documentation/swiftui (accessed Aug. 8, 2023).
*/

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
