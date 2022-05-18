import 'package:flutter_modular/flutter_modular.dart';
import 'package:reseller_2d3d/app_routes.dart';
import 'package:reseller_2d3d/module/auth/auth_modules.dart';
import 'package:reseller_2d3d/module/splash/splash_page.dart';

import 'module/main/main_modules.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    //
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      AppRoutes.root,
      child: (_, __) => SplashPage(),
    ),
    ModuleRoute(
      AppRoutes.auth,
      module: AuthModule(),
    ),
    ModuleRoute(
      AppRoutes.main,
      module: MainModule(),
    ),
  ];
}
