

import 'ingredient.dart';

class Recipe {
  final String title;
  final String imageAddress;
  final List<Ingredient> ingredients;
  double servings;

  Recipe({
    required this.title,
    required this.imageAddress,
    required this.ingredients,
    required this.servings,
  });

  Recipe copyWith({
    String? title,
    String? imageAddress,
    List<Ingredient>? ingredients,
    double? servings,
  }) =>
      Recipe(
        title: title ?? this.title,
        imageAddress: imageAddress ?? this.imageAddress,
        ingredients: ingredients ?? this.ingredients,
        servings: servings ?? this.servings,
      );
}