import '../../pages/shared/model/ingredient.dart';
import '../../pages/shared/model/recipe.dart';

class Recipes {
  static List<Recipe> recipes = [
    Recipe(
        title: 'Roast chicken with comté mushroom sauce',
        imageAddress: 'assets/food1.jpg',
        ingredients: [
          Ingredient(amount: 1.5, unit: 'kg', name: 'free-range chicken'),
          Ingredient(amount: 5, unit: 'g', name: 'Garlic'),
          Ingredient(amount: 200, unit: 'ml', name: 'white wine'),
          Ingredient(amount: 300, unit: 'g', name: 'chestnut mushrooms'),
          Ingredient(amount: 00, unit: 'ml', name: 'double cream'),
        ],
        servings: 1.0),
    Recipe(
        title: 'ames Martin’s pommes aligot (cheesy mash)',
        imageAddress: 'assets/food2.jpg',
        ingredients: [
          Ingredient(amount: 1, unit: 'kg', name: 'yukon gold potatoes'),
          Ingredient(amount: 20, unit: 'g', name: 'garlic '),
          Ingredient(amount: 100, unit: 'g', name: 'unsalted butter '),
          Ingredient(amount: 100, unit: 'ml', name: 'double cream '),
        ],
        servings: 1.0),
    Recipe(
        title: 'Michel Roux Jr’s puff pastry apple tart',
        imageAddress: 'assets/food3.jpg',
        ingredients: [
          Ingredient(amount: 200, unit: 'g', name: 'ready-made all-butter puff pastry'),
          Ingredient(amount: 1, unit: 'kg', name: 'apples, peeled, cored and quartered'),
          Ingredient(amount: 2, unit: 'tbsp', name: 'caster sugar'),
          Ingredient(amount: 40, unit: 'g', name: 'unsalted butter, diced'),
          Ingredient(amount: 1, unit: 'unit', name: 'free-range egg yolk, beaten'),
        ],
        servings: 1.0),
  ];
}