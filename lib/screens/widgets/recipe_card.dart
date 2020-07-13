import 'package:flutter/material.dart';

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
      margin: EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(0, 0, 0, .2),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {},
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
              Padding(
                padding: const EdgeInsets.all(20),
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
              )
            ],
          ),
        ],
      ),
    );
  }
}
