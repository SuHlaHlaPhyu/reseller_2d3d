import 'package:flutter/material.dart';
import 'package:reseller_2d3d/resourses/strings.dart';

class TodayRecordDrawer extends StatefulWidget {
  TodayRecordDrawer({Key key}) : super(key: key);

  @override
  _TodayRecordDrawerState createState() => _TodayRecordDrawerState();
}

class _TodayRecordDrawerState extends State<TodayRecordDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10.0,
          ),
          child: Column(
            children: [
              Text(
                TODAY_SALE_AMOUNT_TOTAL_TEXT,
              ),
              Text('0 MMK'),
              Divider(
                height: 7.0,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'ဒဲ့ ရောင်းရငွေ',
                        ),
                        Text(
                          '500 MMK',
                        )
                      ],
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
