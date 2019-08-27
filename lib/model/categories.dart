import 'dart:collection';

import 'package:task_02_category_widget/model/units_model.dart';
import 'package:flutter/material.dart';

const _categoryIcon = Icons.cake;

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

class Categories {
  final List<Unit> _categories = [
    Unit(unitName: "Length", unitIcon: _categoryIcon, colour: _baseColors[0]),
    Unit(unitName: "Area", unitIcon: _categoryIcon, colour: _baseColors[1]),
    Unit(unitName: "Volume", unitIcon: _categoryIcon, colour: _baseColors[2]),
    Unit(unitName: "Mass", unitIcon: _categoryIcon, colour: _baseColors[3]),
    Unit(unitName: "Time", unitIcon: _categoryIcon, colour: _baseColors[4]),
    Unit(
        unitName: "Digital Storage",
        unitIcon: _categoryIcon,
        colour: _baseColors[5]),
    Unit(unitName: "Energy", unitIcon: _categoryIcon, colour: _baseColors[6]),
    Unit(unitName: "Currency", unitIcon: _categoryIcon, colour: _baseColors[7]),
  ];

  UnmodifiableListView<Unit> get categoriesList {
    return UnmodifiableListView(_categories);
  }

  int get categoriesCount {
    return _categories.length;
  }
}
