//
//  RecipiesViewModel.swift
//  Recipe
//
//  Created by Madushan Senavirathna on 2022-12-15.
//

import Foundation

class RecipesViewModel: ObservableObject {
    @Published private(set) var recipes: [Recipe] = []
    
    init() {
        recipes = Recipe.all
        
    }
    
    func addRecipe(recipe: Recipe){
        recipes.append(recipe)
    }
}
