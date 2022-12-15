//
//  CategoryView.swift
//  Recipe
//
//  Created by Madushan Senavirathna on 2022-12-15.
//

import SwiftUI

struct CategoryView: View {
    
    @EnvironmentObject var recipeVM: RecipesViewModel
    
    var category: Category
    
    var recipe: [Recipe] {
        return recipeVM.recipes.filter { $0.category == category.rawValue}
    }
    
    var body: some View {
        ScrollView {
            RecipeList(recepies: recipe)
        }
        .navigationTitle(category.rawValue + "s")
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: Category.dessert)
            .environmentObject(RecipesViewModel())
    }
}
