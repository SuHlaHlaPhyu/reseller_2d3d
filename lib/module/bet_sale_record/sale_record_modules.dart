import 'package:flutter_modular/flutter_modular.dart';
import 'package:reseller_2d3d/module/bet_sale_record/widget/sale_record_by_date_page.dart';
import 'package:reseller_2d3d/module/bet_sale_record/widget/today_record_page.dart';

import 'sale_record_routes.dart';

class SaleRecordModule extends Module {
  @override
  final List<Bind> binds = [
    //
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      SaleRecordRoutes.root,
      child: (_, __) => TodayRecordPage(),
    ),
    ChildRoute(
      SaleRecordRoutes.saleRecordByDate,
      child: (_, __) => SaleRecordByDatePage(),
    ),
  ];
}
