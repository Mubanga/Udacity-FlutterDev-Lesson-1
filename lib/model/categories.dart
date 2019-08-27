import 'dart:collection';

import 'package:task_02_category_widget/model/units_model.dart';
import 'package:flutter/material.dart';

const _categoryIcon = Icons.cake;

class Categories {
  final List<Unit> _categories = [
    Unit(unitName: "Length", unitIcon: _categoryIcon),
    Unit(unitName: "Area", unitIcon: _categoryIcon),
    Unit(unitName: "Volume", unitIcon: _categoryIcon),
    Unit(unitName: "Mass", unitIcon: _categoryIcon),
    Unit(unitName: "Time", unitIcon: _categoryIcon),
    Unit(unitName: "Digital Storage", unitIcon: _categoryIcon),
    Unit(unitName: "Energy", unitIcon: _categoryIcon),
    Unit(unitName: "Currency", unitIcon: _categoryIcon),
  ];

  UnmodifiableListView<Unit> get categoriesList {
    return UnmodifiableListView(_categories);
  }

  int get categoriesCount {
    return _categories.length;
  }
}
