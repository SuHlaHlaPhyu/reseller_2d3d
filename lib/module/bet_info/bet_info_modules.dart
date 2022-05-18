import 'package:flutter_modular/flutter_modular.dart';
import 'package:reseller_2d3d/module/bet_info/bet_info_routes.dart';
import 'package:reseller_2d3d/module/bet_info/widget/close_bet_page.dart';
import 'package:reseller_2d3d/module/bet_info/widget/detail_page.dart';
import 'package:reseller_2d3d/module/bet_info/widget/register_bet_page.dart';

class BetInfoModule extends Module {
  @override
  final List<Bind> binds = [
    //
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      BetInfoRoutes.root,
      child: (_, __) => RegisterBetPage(),
    ),
    ChildRoute(
      BetInfoRoutes.detailBet,
      child: (_, __) => DetailPage(),
    ),
    ChildRoute(
      BetInfoRoutes.closeBet,
      child: (_, __) => CloseBetPage(),
    ),
  ];
}
