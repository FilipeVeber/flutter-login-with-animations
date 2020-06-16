import 'package:flutter/material.dart';

class HomeCategoryView extends StatefulWidget {
  @override
  _HomeCategoryViewState createState() => _HomeCategoryViewState();
}

class _HomeCategoryViewState extends State<HomeCategoryView> {
  final List<String> _categories = ["Trabalho", "Estudos", "Casa"];

  int _selectedCategory;

  void _selectPreviousCategory() {
    setState(() {
      _selectedCategory--;
    });
  }

  void _selectNextCategory() {
    setState(() {
      _selectedCategory++;
    });
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      _selectedCategory = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        _buildIconButton(Icons.arrow_back_ios,
            _selectedCategory > 0 ? _selectPreviousCategory : null),
        Text(
          _categories[_selectedCategory].toUpperCase(),
          style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              letterSpacing: 1.2,
              fontWeight: FontWeight.w300),
        ),
        _buildIconButton(
            Icons.arrow_forward_ios,
            _selectedCategory < _categories.length - 1
                ? _selectNextCategory
                : null),
      ],
    );
  }

  IconButton _buildIconButton(icon, onPressed) {
    return IconButton(
      icon: Icon(
        icon,
        color: Colors.white,
      ),
      disabledColor: Colors.white30,
      onPressed: onPressed,
    );
  }
}
