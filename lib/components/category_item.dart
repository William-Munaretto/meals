import 'package:flutter/material.dart';
import 'package:navegacao_multitelas_meals/models/category.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({this.category});

  final Category? category;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(category!.title),
    );
  }
}
