//
//  ExploreService.swift
//  Airbnb
//
//  Created by Khojimurod Sultonov on 14/03/25.
//

import Foundation

class ExploreService {
    func fetchListings() async throws -> [Listing] {
        return DeveloperPreview.shared.listings
    }
}
