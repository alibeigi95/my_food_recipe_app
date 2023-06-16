import 'package:get/get.dart';
import 'package:my_food_recipe_app/src/pages/recepi_details/controller/recipe_details_controller.dart';

class RecipeDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RecipeDetailsController());
  }
}
