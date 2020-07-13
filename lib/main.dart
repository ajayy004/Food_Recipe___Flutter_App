import 'package:flutter/material.dart';

import './utils/constants.dart';
import './screens/recipes.dart';
import './screens/reccipe_detail.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Recipe',
      theme: ThemeData(
        primaryColor: primaryColor,
        accentColor: accentColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Recipes(),
      routes: {
        RecipeDetail.routeName: (ctx) => RecipeDetail(),
      },
    );
  }
}
