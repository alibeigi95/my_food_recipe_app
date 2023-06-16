import 'package:flutter/material.dart';
import 'package:my_food_recipe_app/src/pages/recepi_list/view/widget/recepi_item.dart';
import '../../../infrastructure/commons/recipes.dart';


class RecipeList extends StatelessWidget {
  const RecipeList({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: const Color(0xff035259),
    appBar: AppBar(
      title: const Text('Recipes'),
      backgroundColor: const Color(0xFF00282F),
    ),
    body: ListView.builder(
      itemCount: Recipes.recipes.length,
      itemBuilder: (context, index) => RecipeItem(
        recipe: Recipes.recipes[index],
      ),
    ),
  );
}