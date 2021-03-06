import 'package:flutter/material.dart';

import '../widgets/bottom_naviation.dart';
import '../models/recipes.dart';

class RecipeDetail extends StatelessWidget {
  static String routeName = '/recipe-detail';

  @override
  Widget build(BuildContext context) {
    final recipeId = ModalRoute.of(context).settings.arguments as int;
    final recipe = Recipes().findById(recipeId);
    final deviceSize = MediaQuery.of(context).size;

    return Scaffold(
      bottomNavigationBar: BottomNaviation(),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverPersistentHeader(
            pinned: true,
            delegate: MySliver(
              expandedHeight: 220,
              imageUrl: recipe.imageUrl,
              title: recipe.title,
              id: recipe.id,
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                margin: EdgeInsets.only(top: 20, left: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: deviceSize.width * .65,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            recipe.title,
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF555555),
                            ),
                          ),
                          Container(
                            height: 30,
                            margin: EdgeInsets.only(top: 10),
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: recipe.categories.length,
                              itemBuilder: (context, index) {
                                return Text(
                                  "${recipe.categories[index]} ${index + 1 < recipe.categories.length ? ' / ' : ''}"
                                      .toUpperCase(),
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Color(0xFFd5d5d5),
                                  ),
                                );
                              },
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.timer,
                                    color: Color(0xFF43d9b8),
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    "${recipe.time} min",
                                    style: TextStyle(
                                      color: Color(0xFF535756),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(width: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.restaurant,
                                    color: Color(0xFF43d9b8),
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    "${recipe.serving} Serving",
                                    style: TextStyle(
                                      color: Color(0xFF535756),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.favorite_border,
                          size: 28,
                          color: Color(0xFFcecece),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "${recipe.likes}",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFFcecece),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                height: 1,
                color: Color(0xFFeeeeee),
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                        text: "${recipe.calories}",
                        style: TextStyle(
                          color: Color(0xFF43d9b8),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          TextSpan(
                              text: " Calories",
                              style: TextStyle(
                                color: Color(0xFFbbbbbb),
                                fontWeight: FontWeight.normal,
                              )),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: RichText(
                            text: TextSpan(
                              text: "${recipe.protien}g",
                              style: TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                              children: [
                                TextSpan(
                                    text: " Protien",
                                    style: TextStyle(
                                      color: Color(0xFFbbbbbb),
                                      fontWeight: FontWeight.normal,
                                    )),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: RichText(
                            text: TextSpan(
                              text: "${recipe.fat}g ",
                              style: TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                              children: [
                                TextSpan(
                                    text: " Fat",
                                    style: TextStyle(
                                      color: Color(0xFFbbbbbb),
                                      fontWeight: FontWeight.normal,
                                    )),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: RichText(
                            text: TextSpan(
                              text: "${recipe.carbs}g",
                              style: TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                              children: [
                                TextSpan(
                                    text: " Carbs",
                                    style: TextStyle(
                                      color: Color(0xFFbbbbbb),
                                      fontWeight: FontWeight.normal,
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                height: 1,
                color: Color(0xFFeeeeee),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                // color: Colors.yellow,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      bottom: 0,
                      child: Container(
                        height: 1,
                        color: Color(0xFFeeeeee),
                        width: deviceSize.width,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                width: 4,
                                color: Colors.transparent,
                              ),
                            ),
                          ),
                          child: InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10,
                              ),
                              child: Text(
                                'Overview'.toUpperCase(),
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xFFbbbbbb),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                width: 4,
                                color: Colors.transparent,
                              ),
                            ),
                          ),
                          child: InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10,
                              ),
                              child: Text(
                                'Ingredients'.toUpperCase(),
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xFFbbbbbb),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                width: 4,
                                color: Color(0xFF43d9b8),
                              ),
                            ),
                          ),
                          child: InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10,
                              ),
                              child: Text(
                                'Directions'.toUpperCase(),
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xFF43d9b8),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ListTile(
                    title: Text(
                      'Steps'.toUpperCase(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  ...recipe.directions
                      .map(
                        (step) => Column(
                          children: <Widget>[
                            Divider(),
                            ListTile(
                              leading: Icon(
                                Icons.radio_button_unchecked,
                                color: Color(0xFF50dbbc),
                              ),
                              title: Text(
                                step,
                                style: TextStyle(
                                  color: Color(0xFFbbbbbb),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                      .toList()
                ],
              )
            ]),
          ),
        ],
      ),
    );
  }
}

class MySliver extends SliverPersistentHeaderDelegate {
  final double expandedHeight;
  final String imageUrl;
  final String title;
  final int id;

  MySliver({
    @required this.expandedHeight,
    this.title,
    this.imageUrl,
    this.id,
  });

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Stack(
      fit: StackFit.expand,
      overflow: Overflow.visible,
      children: <Widget>[
        Container(
          color: Theme.of(context).primaryColor,
          padding: EdgeInsets.only(
            top: 42,
            left: 40,
            right: 20,
          ),
          child: Text(
            title,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
        Hero(
          tag: id,
          child: Opacity(
            opacity: (1 - shrinkOffset / expandedHeight),
            child: Stack(
              children: [
                Image.asset(
                  imageUrl,
                  height: expandedHeight,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(0, 0, 0, .2),
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
          left: 0,
          top: 30,
          child: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight + 20;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
