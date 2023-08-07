//
//  ReviewComponent.swift
//  MovieMagic
//
//  Created by Tharindu Senadheera on 8/6/23.
//

import SwiftUI

struct ReviewComponent: View {
    let review: MovieReview
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack(spacing: 10) {
                VStack(alignment: .leading, spacing: 4) {
                    Text(review.userName)
                        .font(.headline)
                    Text(hideEmail(review.email))
                        .font(.subheadline)
                }
                Spacer()
                MovieRating(rating: review.rating)
            }
            Text(review.review)
                .padding(.horizontal)
        }
        .padding()
    }
    
    private func hideEmail(_ email: String) -> String {
        let components = email.components(separatedBy: "@")
        guard let name = components.first else { return email }
        let hiddenEmail = String(repeating: "*", count: min(name.count - 2, name.count)) + "@" + components.last!
        return hiddenEmail
    }
}

struct ReviewComponent_Previews: PreviewProvider {
    static var previews: some View {
        ReviewComponent(review: MovieReview(movieID: "123", userName: "John Doe", email: "johndoe@example.com", rating: 4, review: "This is a great movie. I highly recommend it!"))
    }
}
