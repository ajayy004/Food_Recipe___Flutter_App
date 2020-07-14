import 'package:flutter/material.dart';

import '../reccipe_detail.dart';
import '../../models/recipes.dart';

class RecipeRecommendation extends StatelessWidget {
  const RecipeRecommendation({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Recipes().recipes.length,
        itemBuilder: (context, index) => Container(
          width: 100,
          margin: EdgeInsets.only(left: 20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(RecipeDetail.routeName,
                    arguments: Recipes().recipes[index].id);
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      Recipes().recipes[index].imageUrl,
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    Recipes().recipes[index].title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[800],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
