import 'package:flutter/material.dart';
import './screens/categories_screen.dart';
import './screens/categories_meals_screen.dart';
import 'utils/app-routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.pink,
          secondary: Colors.amber,
        ),
        primarySwatch: Colors.pink,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
              titleLarge: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
              ),
              titleMedium: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
              ),
              titleSmall: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
              ),
            ),
        fontFamily: 'Raleway',
      ),
      routes: {
        AppRoutes.HOME: (ctx) => CategoriesScreen(),
        AppRoutes.MEALS: (ctx) => CategoriesMealsScreen(),
      },
    );
  }
}
