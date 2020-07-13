import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  final String title;
  final double size;
  SearchBar({this.title = '', this.size = 50});

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  bool _focused = false;
  FocusNode _searchFocus = FocusNode();

  void onSearchFocus() {
    setState(() {
      _focused = !_focused;
    });
  }

  @override
  void initState() {
    super.initState();
    _searchFocus.addListener(onSearchFocus);
  }

  @override
  void dispose() {
    super.dispose();
    _searchFocus.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: widget.size,
      decoration: BoxDecoration(
        color: Color(0xFFE9E9E9),
        borderRadius: BorderRadius.circular(widget.size),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              focusNode: _searchFocus,
              style: TextStyle(
                color: Color(0xFF43d9b8),
              ),
              cursorColor: Color(0xFF43d9b8),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintStyle: TextStyle(
                  color: Color(0xFFb8b8b8),
                ),
                hintText: widget.title,
              ),
            ),
          ),
          Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 8,
                ),
                child: Icon(
                  Icons.search,
                  color: Color(0xFFb8b8b8),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
