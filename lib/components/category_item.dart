import 'package:flutter/material.dart';
import 'package:navegacao_multitelas_meals/models/category.dart';
import 'package:navegacao_multitelas_meals/utils/app-routes.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, this.category});

  final Category? category;

  void _selectCategory(BuildContext context) {
    // Navigator.of(context).push(
    //   MaterialPageRoute(
    //     builder: (_) {
    //       return CategoriesMealsScreen();
    //     },
    //   ),
    // );

    Navigator.of(context).pushNamed(AppRoutes.MEALS, arguments: category);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [
              category!.color.withValues(alpha: 0.5),
              category!.color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Text(
          category!.title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
