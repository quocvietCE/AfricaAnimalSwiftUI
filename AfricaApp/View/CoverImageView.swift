//
//  CoverImageView.swift
//  AfricaApp
//
//  Created by Apple on 5/7/21.
//

// MARK: - PROPERTIES

// MARK: - BODY

// MARK: PREVIEW

import SwiftUI

struct CoverImageView: View {
    
    // MARK: - PROPERTIES
    let coverImage: [CoverImage] = Bundle.main.decode("covers.json")

    // MARK: - BODY
    
    var body: some View {
        TabView {
            ForEach(coverImage) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            } //: LOOP
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
    }
}

// MARK: PREVIEW

struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
