//
//  MoviewReview.swift
//  MovieMagic
//
//  Created by Tharindu Senadheera on 8/6/23.
//

import SwiftUI

struct MovieReview {
    let id: String = UUID().uuidString
    let movieID: String
    let userName: String
    let email: String
    let rating: Int
    let review: String
}
