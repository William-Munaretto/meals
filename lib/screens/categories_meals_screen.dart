import 'package:flutter/material.dart';

import '../models/category.dart';
import '../data/dummy_data.dart';
import '../components/meal_item.dart';
import '../models/meal.dart';

class CategoriesMealsScreen extends StatelessWidget {
  const CategoriesMealsScreen({super.key, required this.meals});

  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)?.settings.arguments as Category;
    final categoryMeals = meals.where((meal) {
      return meal.categories.contains(category.id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            itemCount: categoryMeals.length,
            itemBuilder: (ctx, index) {
              return MealItem(meal: categoryMeals[index]);
            }),
      ),
    );
  }
}
