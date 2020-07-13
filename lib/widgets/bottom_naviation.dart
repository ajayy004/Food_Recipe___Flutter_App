import 'package:flutter/material.dart';

class BottomNaviation extends StatelessWidget {
  const BottomNaviation({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            width: 0.5,
            color: Color(0xFFb8b8b8),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.person_outline,
                    size: 32,
                    color: Color(0xFFAEAEAE),
                  ),
                  Text(
                    'Settings',
                    style: TextStyle(
                      color: Color(0xFFAEAEAE),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.list,
                    size: 32,
                    color: Color(0xFF535353),
                  ),
                  Text(
                    'Recipes',
                    style: TextStyle(
                      color: Color(0xFF535353),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.favorite_border,
                    size: 32,
                    color: Color(0xFFAEAEAE),
                  ),
                  Text(
                    'Favorite',
                    style: TextStyle(
                      color: Color(0xFFAEAEAE),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
