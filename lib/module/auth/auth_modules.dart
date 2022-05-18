import 'package:flutter_modular/flutter_modular.dart';
import 'package:reseller_2d3d/module/auth/auth_routes.dart';

import 'widget/login_page.dart';

class AuthModule extends Module {
  @override
  final List<Bind> binds = [
    //
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      AuthRoutes.root,
      child: (_, __) => LoginPage(),
    ),
  ];
}
