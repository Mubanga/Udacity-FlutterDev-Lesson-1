import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_02_category_widget/model/categories.dart';
import 'package:task_02_category_widget/widgets/category_tile.dart';
import 'package:task_02_category_widget/router.dart' as router;

const _baseColors = <Color>[
  Colors.teal,
  Colors.orange,
  Colors.pinkAccent,
  Colors.blueAccent,
  Colors.yellow,
  Colors.greenAccent,
  Colors.purpleAccent,
  Colors.red,
];

class CategoryScreen extends StatefulWidget {
  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.close,
          color: Colors.black,
        ),
        title: Text(
          "UNIT CONVERTER",
          style: TextStyle(fontSize: 30.0, color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Colors.green[100],
      body: ListView.builder(
          itemCount: Provider.of<Categories>(context).categoriesCount,
          itemBuilder: (context, int itemIndex) {
            return CategoryTile(
              name: Provider.of<Categories>(context)
                  .categoriesList[itemIndex]
                  .unitName,
              color: _baseColors[itemIndex],
              iconLocation: Provider.of<Categories>(context)
                  .categoriesList[itemIndex]
                  .unitIcon,
              onClick: () {
                Navigator.pushNamed(context, router.ConverterScreenRoute,
                    arguments: itemIndex);
              },
            );
          }),
    );
  }
}
