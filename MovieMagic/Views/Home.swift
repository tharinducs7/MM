//
//  Home.swift
//  MovieMagic
//
//  Created by Tharindu Senadheera on 8/6/23.
//

import SwiftUI

struct Home: View {
    var body: some View {
        ZStack{
            VStack {
                Text("Trending List")
                TrendingList()
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
