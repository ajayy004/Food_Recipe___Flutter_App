import 'package:flutter/material.dart';

import './widgets/categories.dart';
import './widgets/block_heading.dart';
import './widgets/filters.dart';
import './widgets/recipe_scroll_cards.dart';
import './widgets/recipe_recommendation.dart';

import '../widgets/search.dart';
import '../widgets/bottom_naviation.dart';

class Recipes extends StatelessWidget {
  const Recipes({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNaviation(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SearchBar(
                title: 'Search recipes...',
                size: 40,
              ),
            ),
            SizedBox(height: 10),
            Categories(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 10),
                      child: BlockHeading(
                        title: 'Popular',
                        isViewAllVisiable: true,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 10),
                      child: Filters(),
                    ),
                    SizedBox(height: 10),
                    RecipeScrollCards(),
                    SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: BlockHeading(
                        title: 'Recommended',
                        fontScale: 0.8,
                      ),
                    ),
                    SizedBox(height: 5),
                    RecipeRecommendation(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
