//
//  FavoritesView.swift
//  iDine
//
//  Created by Nurtugan Nuraly on 12/23/21.
//

import SwiftUI

struct FavoritesView: View {
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView {
            VStack {
                if order.favoriteItems.isEmpty {
                    Text("No favorites")
                } else {
                    List {
                        ForEach(Array(order.favoriteItems)) { item in
                            HStack {
                                Text(item.name)
                                Spacer()
                                Text("$\(item.price)")
                            }
                        }
                    }
                }
            }.navigationTitle("Favorites")
        }
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
            .environmentObject(Order())
    }
}
