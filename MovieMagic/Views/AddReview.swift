//
//  AddReview.swift
//  MovieMagic
//
//  Created by Tharindu Senadheera on 8/6/23.
//

import SwiftUI

struct AddReview: View {
    var movie: Movie
    @State private var reviewContent: String = ""
    
    var body: some View {
        NavigationView {
            List {
                MovieHeader(movie: movie)
                    .padding(.top, -50)
                
                Section(header: Text("Rating")) {
                    
                }
                
                Section(header: Text("Review")) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black, lineWidth: 1) // Border color and width
                        
                        TextEditor(text: $reviewContent)
                            .frame(height: 400)
                            .padding(10) // Optional padding inside the border
                    }
                    .padding(10) // Optional padding outside the border
                }
            }
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button{
                        
                    } label: {
                        Label("Cancel", systemImage: "xmark")
                            .labelStyle(.iconOnly)
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button{
                        
                    } label: {
                        Label("Done", systemImage: "checkmark")
                            .labelStyle(.iconOnly)
                    }.disabled(reviewContent.isEmpty)
                }
            })
            .listStyle(.plain)
            .navigationTitle("New Review").fontDesign(.rounded)
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(.stack)
    }
}

struct AddReview_Previews: PreviewProvider {
    static var previews: some View {
        AddReview(movie: sampleMovies[0])
    }
}
