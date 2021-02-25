import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:brandon_pos/widgets/drawer.dart';
import 'package:brandon_pos/models/title_data.dart';
import 'package:brandon_pos/models/category_data.dart';
import 'package:brandon_pos/widgets/category_card.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          title: Text(Provider.of<TitleData>(context).getHomepage),
        ),
        drawer: DrawerMenu(),
        body: Row(
          children: [
            Flexible(
              flex: 1,
              child: Consumer<CategoryData>(
                builder: (context, categoryData, child) {
                  return GridView.builder(
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 200,
                          childAspectRatio: 3 / 2,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20),
                      itemCount: categoryData.getCount,
                      itemBuilder: (BuildContext context, index) {
                        final category = categoryData.categories[index];
                        return CategoryCard(categoryName: category.name);
                      });
                },
              ),
            ),
          ],
        ));
  }
}
