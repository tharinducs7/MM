//
//  AboutView.swift
//  MovieMagic
//
//  Created by Tharindu Senadheera on 8/6/23.
//

import SwiftUI

struct AboutView: View {
    @State private var user: User = User(id: UUID(), name: "John Doe", email: "johndoe@example.com", favoriteGenres: ["Action", "Drama"])
    
    var body: some View {
        VStack {
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
                .padding(.top, 40)
            
            Text("Version 1.0")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Text("User Information")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top, 20)
            
            Text("Name: \(user.name)")
            Text("Email: \(user.email)")
            Text("Reviews: 4")
            Text("Favorite Movies: 3")
            
            Spacer()
        }
        .navigationBarTitle("About", displayMode: .inline)
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
