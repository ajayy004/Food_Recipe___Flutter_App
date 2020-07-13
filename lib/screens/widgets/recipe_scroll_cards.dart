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
        itemCount: Recipes().recipes.length,
        itemBuilder: (context, index) => RecipeCard(
          id: Recipes().recipes[index].id,
          time: Recipes().recipes[index].time,
          imageUrl: Recipes().recipes[index].imageUrl,
          title: Recipes().recipes[index].title,
          likeCount: Recipes().recipes[index].likes,
        ),
      ),
    );
  }
}
