//
//  RecipeData.swift
//  Cookcademy
//
//  Created by Grahame Narborough on 4/6/2024.
//

import Foundation

class RecipeData: ObservableObject {
  @Published var recipes = Recipe.testRecipes
    
    func recipes(for category: MainInformation.Category) -> [Recipe] {
      var filteredRecipes = [Recipe]()
      for recipe in recipes {
        if recipe.mainInformation.category == category {
          filteredRecipes.append(recipe)
        }
      }
        return filteredRecipes
    }
    func add(recipe: Recipe) {
      if recipe.isValid {
        recipes.append(recipe)
    }
  }
}
