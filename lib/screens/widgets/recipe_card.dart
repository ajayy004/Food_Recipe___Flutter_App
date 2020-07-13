import 'package:flutter/material.dart';

import '../../screens/reccipe_detail.dart';

class RecipeCard extends StatelessWidget {
  final int id;
  final int likeCount;
  final int time;
  final String title;
  final String imageUrl;

  RecipeCard({
    @required this.id,
    @required this.title,
    @required this.likeCount,
    @required this.time,
    @required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    const isFavouritePress = false;

    return Container(
      width: 300,
      height: 280,
      margin: EdgeInsets.only(right: 20),
      padding: EdgeInsets.only(left: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: <Widget>[
            Hero(
              tag: id,
              child: Image.asset(
                imageUrl,
                fit: BoxFit.cover,
                height: double.infinity,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(0, 0, 0, .2),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Stack(
              children: <Widget>[
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed(
                        RecipeDetail.routeName,
                        arguments: id,
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          title,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 32,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {
                        print('recipe favorite $id');
                      },
                      child: Row(
                        children: <Widget>[
                          Icon(
                            isFavouritePress
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color: isFavouritePress
                                ? Color(0xFF50dbbc)
                                : Colors.white,
                          ),
                          SizedBox(width: 5),
                          Text(
                            '$likeCount',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    FlatButton(
                      onPressed: null,
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.timer,
                            color: Colors.white,
                          ),
                          SizedBox(width: 5),
                          Text(
                            '$time min',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
