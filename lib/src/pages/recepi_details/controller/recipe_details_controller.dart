import 'package:get/get.dart';

import '../../shared/model/recipe.dart';

class RecipeDetailsController extends GetxController {
  Recipe? recipe;
  RxDouble sliderValue = 1.0.obs;

  @override
  void onInit() {
    super.onInit();
    recipe = Get.arguments;
  }
}
