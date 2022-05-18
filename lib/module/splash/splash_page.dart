import 'package:flutter/material.dart';
import 'package:reseller_2d3d/app_routes.dart';
import 'package:reseller_2d3d/module/auth/auth_modules.dart';
import 'package:reseller_2d3d/utils/route_utils.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3)).then(
      (value) => RouteUtils.changeRoute<AuthModule>(
        AppRoutes.root,
        isReplace: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Reseller',
        ),
      ),
    );
  }
}
