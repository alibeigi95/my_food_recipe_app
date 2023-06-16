import 'package:flutter/material.dart';
import '../../../shared/model/ingredient.dart';

class IngredientItem extends StatelessWidget {
  final Ingredient ingredient;
  final double serving;

  const IngredientItem({
    required this.ingredient,
    required this.serving,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(bottom: 16),
    child: Row(
      children: [
        Expanded(flex: 1, child: _amount()),
        Expanded(flex:1,child: _unit()),
        Expanded(flex: 4, child: Text(ingredient.name,style: const TextStyle(color: Colors.white),)),
      ],
    ),
  );

  Widget _amount() => Padding(
    padding: const EdgeInsetsDirectional.only(end: 8.0),
    child: Text(
      '${ingredient.amount * serving}',
      style: const TextStyle(
        color: Colors.white,
      ),
    ),
  );

  Widget _unit() => Padding(
    padding: const EdgeInsetsDirectional.only(end: 8.0),
    child: Text(ingredient.unit,style: TextStyle(color: Colors.white)),
  );
}