import 'package:flutter/material.dart';
import 'package:brandon_pos/route_generator.dart';
import 'package:provider/provider.dart';
import 'package:brandon_pos/models/title_data.dart';
import 'package:brandon_pos/models/category_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (context) => TitleData(),
        ),
        ChangeNotifierProvider(
          create: (context) => CategoryData(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: '/',
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}
