import 'package:flutter_modular/flutter_modular.dart';
import 'package:reseller_2d3d/module/bet_info/bet_info_modules.dart';
import 'package:reseller_2d3d/module/bet_sale_record/sale_record_modules.dart';

import 'main_routes.dart';
import 'widget/main_page.dart';

class MainModule extends Module {
  @override
  final List<Bind> binds = [
    //
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      MainRoutes.root,
      child: (_, __) => MainPage(),
    ),
    ModuleRoute(
      MainRoutes.betInfo,
      module: BetInfoModule(),
    ),
    ModuleRoute(
      MainRoutes.saleRecord,
      module: SaleRecordModule(),
    ),
  ];
}
