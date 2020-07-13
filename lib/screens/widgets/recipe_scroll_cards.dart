import 'package:flutter/material.dart';

import './recipe_card.dart';
import '../../models/recipes.dart';

class RecipeScrollCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: recipes.length,
        itemBuilder: (context, index) => RecipeCard(
          id: index,
          time: recipes[index].time,
          imageUrl: recipes[index].imageUrl,
          title: recipes[index].title,
          likeCount: recipes[index].likes,
        ),
      ),
    );
  }
}
