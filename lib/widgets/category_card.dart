import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String categoryName;
  const CategoryCard({Key key, this.categoryName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Center(
          child: Text(
            '$categoryName',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
    );
  }
}
