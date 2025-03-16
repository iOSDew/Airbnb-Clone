//
//  ListingImageCarouselView.swift
//  Airbnb
//
//  Created by Khojimurod Sultonov on 09/03/25.
//

import SwiftUI

struct ListingImageCarouselView: View {
    
    let listing: Listing
    
    var body: some View {
        TabView{
            ForEach(listing.imageURLs, id: \.self){ image in
                Image(image)
                    .resizable()
            }
        }
        .tabViewStyle(.page)    }
}

#Preview {
    ListingImageCarouselView(listing: DeveloperPreview.shared.listings[0])
}
