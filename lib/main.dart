import 'package:flutter/material.dart';
import './screens/categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        useMaterial3: true,
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
      home: CategoriesScreen(),
      darkTheme: ThemeData.dark(),
    );
  }
}
