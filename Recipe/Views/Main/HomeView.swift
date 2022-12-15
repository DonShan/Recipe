//
//  HomeView.swift
//  Recipe
//
//  Created by Madushan Senavirathna on 2022-12-14.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                RecipeList(recepies: Recipe.all)
            }
            .navigationTitle("My Recipes")
        }
        .navigationTitle("My Recipes")
    }
    
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
