import 'package:flutter/material.dart';
import 'package:reseller_2d3d/app_routes.dart';
import 'package:reseller_2d3d/resourses/strings.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: MAIN_SCREEN_APPBAR_TITLE_TEXT,
      initialRoute: AppRoutes.root,
      debugShowCheckedModeBanner: false,
    ).modular();
  }
}
