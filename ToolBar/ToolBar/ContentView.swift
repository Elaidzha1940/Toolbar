//
//  ContentView.swift
//  ToolBar
//
//  Created by Elaidzha Shchukin on 03.09.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var company = ""
    
    
    var body: some View {
        NavigationView{
            VStack{
                ProfileImage(ImageName: "eli profile")
                    .padding()
                
                Form {
                    
                    Section(header: Text("Personal Info")) {
                        TextField("First Name", text: $firstName)
                        TextField("Last Name", text: $lastName)
                        TextField("Company", text: $company)
                    }
                }
            }
            
            .navigationTitle("Profile")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        print("Save tapped")
                    } label: {
                        Label("Save", systemImage: "square.and.arrow.down")
                    }
                    
                    
                }
                
            }
        }
        .accentColor(.gray)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ProfileImage: View {
    
    var ImageName: String
    
    var body: some View {
        Image(ImageName)
            .resizable()
            .frame(width: 125, height: 125)
            .clipShape(Circle())
    }
}
