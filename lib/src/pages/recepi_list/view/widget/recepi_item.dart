import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../infrastructure/routes/route_name.dart';
import '../../../shared/model/recipe.dart';


class RecipeItem extends StatelessWidget {
  final Recipe recipe;

  const RecipeItem({
    required this.recipe,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
    child: GestureDetector(
      onTap: () {
        Get.toNamed(
          RouteNames.login+RouteNames.recipeList+RouteNames.recipeDetail,
          arguments: recipe,
        );
      },
      child: DecoratedBox(
        decoration: const BoxDecoration(
          color: Color(0xff159947),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Column(
          children: [_title(), _image()],
        ),
      ),
    ),
  );

  Widget _title() => Padding(
    padding: const EdgeInsets.all(16),
    child: Align(
      alignment: AlignmentDirectional.centerStart,
      child: Text(
        recipe.title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );

  Widget _image() => Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(recipe.imageAddress),
        fit: BoxFit.fitWidth,
      ),
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(10),
        bottomRight: Radius.circular(10),
      ),
    ),
    constraints: const BoxConstraints.expand(
      height: 200,
    ),
  );
}