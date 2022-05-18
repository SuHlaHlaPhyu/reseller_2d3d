import 'package:flutter/material.dart';
import 'package:bruno/bruno.dart';
import 'package:reseller_2d3d/module/bet_info/bet_info_modules.dart';
import 'package:reseller_2d3d/module/bet_info/bet_info_routes.dart';
import 'package:reseller_2d3d/module/bet_sale_record/sale_record_modules.dart';
import 'package:reseller_2d3d/module/bet_sale_record/sale_record_routes.dart';
import 'package:reseller_2d3d/resourses/strings.dart';
import 'package:reseller_2d3d/utils/route_utils.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: BrnAppBar(
        titleAlignment: Alignment.centerLeft,
        automaticallyImplyLeading: false,
        title: Text(
          MAIN_SCREEN_APPBAR_TITLE_TEXT,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 10.0,
          ),
          CalendarView(),
          Spacer(),
          SalesRecordView(),
          Spacer(),
          RegisterAndCloseButtonView(),
          SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }
}

class CalendarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BrnCalendarView(
      displayMode: DisplayMode.Month,
      selectMode: SelectMode.SINGLE,
      startEndDateChange: (startDate, endDate) {
        // BrnToast.show('selected date: $startDate', context);
        RouteUtils.changeRoute<SaleRecordModule>(
          SaleRecordRoutes.saleRecordByDate,
        );
      },
    );
  }
}

class RegisterAndCloseButtonView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        BrnBigMainButton(
          width: MediaQuery.of(context).size.width / 2.2,
          title: REGISTER_BET_TEXT,
          onTap: () {
            RouteUtils.changeRoute<BetInfoModule>(
              BetInfoRoutes.root,
            );
          },
        ),
        SizedBox(
          width: 5.0,
        ),
        BrnBigMainButton(
          width: MediaQuery.of(context).size.width / 2.2,
          bgColor: Colors.red,
          title: CLOSE_BET_TEXT,
          onTap: () {
            RouteUtils.changeRoute<BetInfoModule>(
              BetInfoRoutes.closeBet,
            );
          },
        ),
      ],
    );
  }
}

class SalesRecordView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15.0,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: () {
              RouteUtils.changeRoute<SaleRecordModule>(
                SaleRecordRoutes.root,
              );
            },
            child: BrnShadowCard(
              padding: EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 5.0,
              ),
              color: Colors.white,
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          TODAY_SALE_RECORD_TEXT,
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "0 MMK",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            Icon(
                              Icons.arrow_right,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          BrnShadowCard(
            padding: EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 5.0,
            ),
            color: Colors.white,
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        WEEK_SALE_RECORD_TEXT,
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "50,000 MMK",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        MONTH_SALE_RECORD_TEXT,
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "187,200 MMK",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
