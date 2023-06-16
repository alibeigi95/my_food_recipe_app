import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_food_recipe_app/src/pages/recepi_details/view/widget/ingredient_item.dart';


import '../controller/recipe_details_controller.dart';
import 'widget/labeled_divider.dart';

class RecipeDetails extends GetView<RecipeDetailsController> {
  const RecipeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff035259),
      appBar: AppBar(
        title: const Text(
          'Recipe Details',
        ),
        backgroundColor: const Color(0xFF00282F),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            if (controller.recipe != null)
              Image(
                image: AssetImage(controller.recipe!.imageAddress),
              ),
            _title(),
            const LabeledDivider(
              label: 'Ingredients',
            ),
            _ingredients(),
            const LabeledDivider(
              label: 'Servings',
            ),
            _servingsSlide(),
          ],
        ),
      ),
    );
  }

  Widget _title() => Padding(
    padding: const EdgeInsets.only(
      top: 16,bottom: 16,left: 16
    ),
    child: Center(
      child: Text(
        controller.recipe?.title ?? '-',
        style: const TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );

  Widget _ingredients() => Padding(
    padding: const EdgeInsets.all(16),
    child: ListView.builder(
      shrinkWrap: true,
      itemCount: controller.recipe!.ingredients.length,
      itemBuilder: (context, index) => Obx(
            () => IngredientItem(
          ingredient: controller.recipe!.ingredients[index],
          serving: controller.sliderValue.value,
        ),
      ),
    ),
  );

  Widget _servingsSlide() => Obx(
        () => Slider(
      min: 1,
      max: 10,
      divisions: 9,
      thumbColor: const Color(0xffE36006),
      activeColor: const Color(0xffE36006),
      inactiveColor: const Color(0xffE8AD0A),
      label: '${controller.sliderValue}',
      value: controller.sliderValue.value,
      onChanged: (newValue) {
        controller.sliderValue.value = newValue;
        controller.recipe!.copyWith(servings: newValue);
      },
    ),
  );
}