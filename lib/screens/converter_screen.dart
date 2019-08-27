import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_02_category_widget/model/categories.dart';
import 'package:task_02_category_widget/model/units_model.dart';

class ConverterScreen extends StatefulWidget {
  final int selectedIndex;

  ConverterScreen({@required this.selectedIndex})
      : assert(selectedIndex != null);

  @override
  _ConverterScreenState createState() => _ConverterScreenState();
}

class _ConverterScreenState extends State<ConverterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          centerTitle: true,
          title: Text(
            Provider.of<Categories>(context)
                .categoriesList[widget.selectedIndex]
                .unitName,
            style: TextStyle(fontSize: 30.0, color: Colors.black),
          ),
          backgroundColor: Provider.of<Categories>(context)
              .categoriesList[widget.selectedIndex]
              .colour,
          elevation: 0,
        ),
        body: _buildMockData(context));
  }

  Widget _buildMockData(BuildContext context) {
    // Here is just a placeholder for a list of mock units
    final unitWidgets =
        Provider.of<Categories>(context).categoriesList.map((Unit unit) {
      // TODO: Set the color for this Container
      return Container(
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.all(16.0),
        color: Provider.of<Categories>(context)
            .categoriesList[widget.selectedIndex]
            .colour,
        child: Column(
          children: <Widget>[
            Text(
              unit.unitName,
              style: Theme.of(context).textTheme.headline,
            ),
            Text(
              'Conversion: ${unit.conversion}',
              style: Theme.of(context).textTheme.subhead,
            ),
          ],
        ),
      );
    }).toList();

    return ListView(
      children: unitWidgets,
    );
  }
}
