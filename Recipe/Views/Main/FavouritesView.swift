//
//  FavouritesView.swift
//  Recipe
//
//  Created by Madushan Senavirathna on 2022-12-14.
//

import SwiftUI

struct FavouritesView: View {
    var body: some View {
        NavigationView {
            Text("You havent seved any recipe yet")
                .padding()
                .navigationTitle("Favourite")
        }
        .navigationViewStyle(.stack)
    }
}

struct FavouritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavouritesView()
    }
}
