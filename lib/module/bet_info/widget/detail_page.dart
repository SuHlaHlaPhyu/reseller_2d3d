import 'dart:math';

import 'package:flutter/material.dart';
import 'package:bruno/bruno.dart';
import 'package:reseller_2d3d/resourses/strings.dart';

class DetailPage extends StatefulWidget {
  DetailPage({Key key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  // Generate a list of fiction prodcts
  final List<Map> _products = List.generate(
    7,
    (i) {
      return {
        "id": 'REF202112230$i',
        "name": "1,2, $i   50 MMK (F)",
        "price": Random().nextInt(200) + 1
      };
    },
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BrnAppBar(
        title: Text(
          DETAIL_FACT_TEXT,
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
        ),
        child: Column(
          children: [
            BrnShadowCard(
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
                            '00',
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
                ],
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            DetailTable(context),
          ],
        ),
      ),
    );
  }

  Container DetailTable(BuildContext context) {
    return Container(
      width: double.infinity,
      child: SingleChildScrollView(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            headingRowColor: MaterialStateProperty.all(
              Colors.blue[200],
            ),
            columns: [
              DataColumn(
                label: Text(
                  REFERENCE_TEXT,
                ),
              ),
              DataColumn(
                label: Text(
                  BET_NUMBERS_TEXT,
                ),
              ),
              DataColumn(
                label: Text(
                  TOTAL_AMOUNT_TEXT,
                ),
              ),
            ],
            rows: _products.map((item) {
              return DataRow(cells: [
                DataCell(
                  Text(
                    item['id'].toString(),
                  ),
                ),
                DataCell(
                  Text(
                    item['name'],
                  ),
                ),
                DataCell(
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        item['price'].toString() + ' MMK',
                      ),
                      Icon(
                        Icons.arrow_right_sharp,
                        color: Colors.grey[500],
                      ),
                    ],
                  ),
                  onTap: () {
                    BrnToast.show(VIEW_VOUNCHER_TEXT, context);
                  },
                ),
              ]);
            }).toList(),
          ),
        ),
      ),
    );
  }
}
