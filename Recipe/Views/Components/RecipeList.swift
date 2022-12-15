//
//  RecipeList.swift
//  Recipe
//
//  Created by Madushan Senavirathna on 2022-12-14.
//

import SwiftUI

struct RecipeList: View {
    
    var recepies: [Recipe]
    
    var body: some View {
        VStack {
            HStack {
                Text("\(recepies.count) \(recepies.count > 1 ? "recipes" : "recipe")")
                    .font(.headline)
                    .fontWeight(.medium)
                    .opacity(0.7)
                
                //    .Spacer()
            }
            
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 15)], spacing: 15) {
                ForEach(recepies) { recipe in
                    NavigationLink(destination: RecipeView(recipe: recipe)){
                        RecipeCard(recipe: recipe)
                    }
                   
                }
            }
            .padding(.top)
        }
        .padding(.horizontal)
    }
}

struct RecipeList_Previews: PreviewProvider {
    static var previews: some View {
        RecipeList(recepies: Recipe.all)
    }
}
