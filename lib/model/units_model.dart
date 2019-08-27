import 'package:flutter/cupertino.dart';

class Unit {
  String unitName;
  IconData unitIcon;

  Unit({@required this.unitName, @required this.unitIcon})
      : assert(unitName != null),
        assert(unitIcon != null);
}
