import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_food_recipe_app/src/infrastructure/routes/route_name.dart';
import 'package:my_food_recipe_app/src/infrastructure/routes/route_page.dart';


class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) => GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'my recipe app',
    initialRoute: RouteNames.login,
    getPages: RoutePages.pages,
  );
}