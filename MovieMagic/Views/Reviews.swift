//
//  Reviews.swift
//  MovieMagic
//
//  Created by Tharindu Senadheera on 8/6/23.
//

import SwiftUI

struct Reviews: View {
    var movie: Movie
    
    var body: some View {
        VStack(spacing: 15) {
            
            // Movie Preview
            GeometryReader {
                let size = $0.size
                
                HStack(spacing: 20) {
                    MovieHeader(movie: movie)
                        .padding(.top, -50)
//                    .offset(y: offsetAimation ? 0: 100)
//                    .opacity(offsetAimation ? 1: 0)
                }
            }
            .frame(height: 220)
            .zIndex(1)
            
            List {
                ReviewComponent(review: MovieReview(movieID: "123", userName: "John Doe", email: "johndoe@example.com", rating: 4, review: "This is a great movie. I highly recommend it!"))

                ReviewComponent(review: MovieReview(movieID: "123", userName: "John Doe", email: "johndoe@example.com", rating: 4, review: "This is a great movie. I highly recommend it!"))

                ReviewComponent(review: MovieReview(movieID: "123", userName: "John Doe", email: "johndoe@example.com", rating: 4, review: "This is a great movie. I highly recommend it!"))

            }
            .listStyle(.plain)
        }
    }
}

struct Reviews_Previews: PreviewProvider {
    static var previews: some View {
        Reviews(movie: sampleMovies[0])
    }
}
