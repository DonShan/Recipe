//
//  ContentView.swift
//  Recipe
//
//  Created by Madushan Senavirathna on 2022-12-14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabBar()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(RecipesViewModel())
    }
}
