import 'package:flutter/cupertino.dart';

class Unit {
  String unitName;
  IconData unitIcon;
  Color colour;
  final double conversion;

  Unit(
      {@required this.unitName,
      @required this.unitIcon,
      @required this.colour,
      this.conversion})
      : assert(unitName != null),
        assert(unitIcon != null),
        assert(colour != null);

  /// Creates a [Unit] from a JSON object.
  Unit.fromJson(Map jsonMap)
      : assert(jsonMap['name'] != null),
        assert(jsonMap['conversion'] != null),
        unitName = jsonMap['name'],
        conversion = jsonMap['conversion'].toDouble();
}
