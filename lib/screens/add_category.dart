import 'package:brandon_pos/models/category_data.dart';
import 'package:flutter/material.dart';
import 'package:brandon_pos/widgets/drawer.dart';
import 'package:provider/provider.dart';

class AddCategory extends StatelessWidget {
  const AddCategory({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String newCategoryName;
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Add Category'),
        ),
        drawer: DrawerMenu(),
        body: Center(
          child: Column(
            children: [
              TextField(
                onChanged: (newText) {
                  newCategoryName = newText;
                },
              ),
              FlatButton(
                child: Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                color: Colors.lightBlueAccent,
                onPressed: () {
                  Provider.of<CategoryData>(context, listen: false)
                      .addCategory(newCategoryName);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
