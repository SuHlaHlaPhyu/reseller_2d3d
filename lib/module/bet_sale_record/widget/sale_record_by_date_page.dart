import 'package:flutter/material.dart';
import 'package:bruno/bruno.dart';
import 'package:reseller_2d3d/module/bet_info/bet_info_modules.dart';
import 'package:reseller_2d3d/module/bet_info/bet_info_routes.dart';
import 'package:reseller_2d3d/resourses/strings.dart';
import 'package:reseller_2d3d/utils/route_utils.dart';

class SaleRecordByDatePage extends StatefulWidget {
  SaleRecordByDatePage({Key key}) : super(key: key);

  @override
  _SaleRecordByDatePageState createState() => _SaleRecordByDatePageState();
}

class _SaleRecordByDatePageState extends State<SaleRecordByDatePage> {
  int selectedIndex = 0;
  String closeNum = '__';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BrnAppBar(
        title: Text(
          SALE_RECORD_TEXT,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(
          10.0,
        ),
        child: BrnShadowCard(
          padding: EdgeInsets.all(20),
          color: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BrnShadowCard(
                    color: Colors.green,
                    child: Padding(
                      padding: const EdgeInsets.all(
                        12.0,
                      ),
                      child: Text(
                        '05',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "0 MMK",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    START_TIME_TEXT,
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  Text(
                    "2021-12-22 14:38:42",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    END_TIME_TEXT,
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  Text(
                    "2021-12-22 14:38:42",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      RouteUtils.changeRoute<BetInfoModule>(
                        BetInfoRoutes.closeBet,
                      );
                    },
                    child: Visibility(
                      visible: false,
                      child: Text(
                        CLOSE_BET_TEXT,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      RouteUtils.changeRoute<BetInfoModule>(
                        BetInfoRoutes.detailBet,
                      );
                    },
                    child: Text(
                      VIEW_DETAIL_BET_INFO_TEXT,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
