import 'package:flutter/material.dart';

class BlockHeading extends StatelessWidget {
  final String title;
  final double fontScale;
  final bool isViewAllVisiable;

  const BlockHeading({
    Key key,
    @required this.title,
    this.fontScale = 1,
    this.isViewAllVisiable = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Text(
            title,
            textScaleFactor: fontScale,
            style: Theme.of(context).textTheme.headline5.copyWith(
                  color: Color(0xFF535756),
                  fontWeight: FontWeight.bold,
                ),
          ),
          if (isViewAllVisiable)
            InkWell(
              onTap: () {},
              child: Text(
                'View all',
                textScaleFactor: fontScale,
                style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).accentColor,
                ),
              ),
            )
        ],
      ),
    );
  }
}
