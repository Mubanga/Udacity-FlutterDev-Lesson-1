import 'package:flutter/material.dart';
import 'package:task_02_category_widget/screens/category_screen.dart';
import 'package:task_02_category_widget/screens/converter_screen.dart';
import 'package:task_02_category_widget/screens/undefined_screen.dart';

/// Define Your Page Routes/Screens As Const String Names In "routes_list.dart"
/// Or Any Other File So You Don't Have To Worry About Typing Them As String Literals In
/// The Switch Statements Below e.g. " case: "/' " ---> " case: HomeScreen "

///***N.B Define All Your Routes Here ***N.B***
/// Naming Convention Is To Append "Route" To The End Of All Screen Names
/// E.g. CategoryScreen--->CategoryScreenRoute
const String UnnamedScreenRoute = "/";
const String CategoryScreenRoute = "/CategoryScreen";
const String ConverterScreenRoute = "/ConverterScreen";

///*************************************

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case CategoryScreenRoute:
      {
        return MaterialPageRoute(builder: (context) => CategoryScreen());
      }
    case ConverterScreenRoute:
      {
        final passedArgumentSelectedIndex = settings.arguments;
        return MaterialPageRoute(
            builder: (context) => ConverterScreen(
                  selectedIndex: passedArgumentSelectedIndex,
                ));
      }

    /// Make Sure To Include A Default Case For What Happens If Navigation To
    /// An Unknown Or Undefined Route Occurs.
    default:
      {
        return MaterialPageRoute(builder: (context) => UndefinedScreen());
      }
  }
}
