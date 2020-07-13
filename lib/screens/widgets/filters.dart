import 'package:flutter/material.dart';

class Filter {
  String iconName;
  String label;
  bool isTitle;

  Filter({
    this.iconName,
    this.label,
    this.isTitle = false,
  });
}

class Filters extends StatelessWidget {
  final List<Filter> _filters = [
    Filter(iconName: 'settings'),
    Filter(label: 'Toast'),
    Filter(label: 'Avocado'),
    Filter(label: 'Egg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _filters.length,
        itemBuilder: (context, index) => Row(
          children: <Widget>[
            Chip(
              backgroundColor: Color(0xFFe1faf4),
              label: _filters[index].iconName != null
                  ? Icon(
                      Icons.settings,
                      color: Color(0xFF50dbbc),
                    )
                  : Text(
                      _filters[index].label,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF50dbbc),
                      ),
                    ),
            ),
            SizedBox(width: 5),
          ],
        ),
      ),
    );
  }
}
