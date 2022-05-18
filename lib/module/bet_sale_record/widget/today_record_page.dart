import 'package:flutter/material.dart';
import 'package:bruno/bruno.dart';
import 'package:reseller_2d3d/module/bet_sale_record/drawer/today_record_drawer.dart';
import 'package:reseller_2d3d/resourses/strings.dart';

class TodayRecordPage extends StatefulWidget {
  TodayRecordPage({Key key}) : super(key: key);

  @override
  _TodayRecordPageState createState() => _TodayRecordPageState();
}

class _TodayRecordPageState extends State<TodayRecordPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  void _openEndDrawer() {
    _scaffoldKey.currentState.openEndDrawer();
  }

  List<String> items = [
    '00',
    '01',
    '02',
    '03',
    '04',
    '05',
    '06',
    '07',
    '08',
    '09',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
    '17',
    '18',
    '19',
    '00',
    '01',
    '02',
    '03',
    '04',
    '05',
    '06',
    '07',
    '08',
    '09',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
    '17',
    '18',
    '19',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: TodayRecordDrawer(),
      appBar: BrnAppBar(
        actions: [
          GestureDetector(
            onTap: () {
              _openEndDrawer();
            },
            child: Icon(
              Icons.list,
              color: Colors.black,
            ),
          ),
        ],
        title: Text(
          TODAY_SALE_RECORD_TEXT,
          style: TextStyle(
            color: Colors.black,
            fontSize: 17.0,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(
          8.0,
        ),
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: (3 / 1),
          children: items
              .map(
                (data) => Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 5,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey[200],
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 53.0,
                        width: 53.0,
                        color: Colors.green,
                        child: Center(
                          child: Text(
                            data,
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Text(
                        '100 MMK',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      GestureDetector(
                        onTap: () {
                          BrnToast.show('detail', context);
                        },
                        child: Icon(
                          Icons.info_outline,
                          color: Colors.blue[300],
                        ),
                      )
                    ],
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
