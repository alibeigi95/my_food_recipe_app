import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:my_food_recipe_app/src/infrastructure/routes/route_name.dart';
import 'package:my_food_recipe_app/src/pages/login/view/login.dart';

import '../../pages/login/bindings/login_binding.dart';
import '../../pages/recepi_details/commons/recipe_details_binding.dart';
import '../../pages/recepi_details/view/recepi_details.dart';
import '../../pages/recepi_list/view/recepi_list.dart';

class RoutePages {
  static final List<GetPage> pages = [
    GetPage(
        name: RouteNames.login,
        page: () => const LoginPage(),
        binding: LoginBinding(),
        children: [
          GetPage(
              name: RouteNames.recipeList,
              page: () => const RecipeList(),
              children: [
                GetPage(
                    name: RouteNames.recipeDetail,
                    page: () => const RecipeDetails(),
                    binding: RecipeDetailsBinding())
              ])
        ]),
  ];
}
