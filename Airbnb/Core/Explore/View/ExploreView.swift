//
//  ExploreView.swift
//  Airbnb
//
//  Created by Khojimurod Sultonov on 09/03/25.
//

import SwiftUI

struct ExploreView: View {
    @State private var shoDestinationSearchView = false
    @StateObject var viewModel = ExploreViewModel(service: ExploreService())
    
    var body: some View {
        NavigationStack {
            
            if shoDestinationSearchView {
                DestinationSearchView(show: $shoDestinationSearchView, viewModel: viewModel)
//                    .environmentObject(viewModel)
            }else{
                ScrollView {
                    SearchAndFilterBarView(location: $viewModel.searchLocation)
                        .onTapGesture {
                            withAnimation(.snappy){
                                shoDestinationSearchView.toggle()
                            }
                        }
                    
                    LazyVStack(spacing: 32) {
                        ForEach(viewModel.listings) { listing in
                            NavigationLink(value: listing) {
                                ListingItemView(listing: listing)
                                    .frame(height: 400)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                            }
                        }
                    }
                    .padding()
                }
                .navigationDestination(for: Listing.self){ listing in
                    ListingDetailView(listing: listing)
                }
            }
        }
    }
}

#Preview {
    ExploreView()
}
