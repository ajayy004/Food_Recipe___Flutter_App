import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> _caterogries = [
    'New',
    'Breakfast',
    'Lunch',
    'Dinner',
    'Healthy'
  ];
  int _selectdIndex = 0;

  void onSelectCategory(int selectedIndex) {
    setState(() {
      _selectdIndex = selectedIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 20,
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 0.5,
            color: Color(0xFFb8b8b8),
          ),
        ),
      ),
      child: SizedBox(
        height: 50,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _caterogries.length,
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              onSelectCategory(index);
            },
            child: Stack(
              children: <Widget>[
                ConstrainedBox(
                  constraints: BoxConstraints(minWidth: 70),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 5,
                      vertical: 10,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        _caterogries[index].toUpperCase(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: _selectdIndex == index
                              ? Color.fromRGBO(67, 217, 184, 1)
                              : Color(0xFFcdcdcd),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 4,
                    color: _selectdIndex == index
                        ? Color.fromRGBO(67, 217, 184, 1)
                        : Colors.transparent,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
