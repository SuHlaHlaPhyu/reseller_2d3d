import 'package:flutter/material.dart';
import 'package:bruno/bruno.dart';
import 'package:reseller_2d3d/resourses/strings.dart';

class RegisterBetPage extends StatefulWidget {
  RegisterBetPage({Key key}) : super(key: key);

  @override
  _RegisterBetPageState createState() => _RegisterBetPageState();
}

class _RegisterBetPageState extends State<RegisterBetPage> {
  TextEditingController _amountController = new TextEditingController();
  TextEditingController _voucherController = new TextEditingController();
  String selectedNum;
  List<String> tagList = [
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
  List<String> typeList = [
    'ဒဲ့',
    'အာ',
    'ရှေ့ပိတ်',
    'နောက်ပိတ်',
    'သုည ဘရိတ်',
    'တစ် ဘရိတ်',
    'နှစ် ဘရိတ်',
    'သုံး ဘရိတ်',
    'လေး ဘရိတ်',
    'ငါး ဘရိတ်',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BrnAppBar(
        title: Text(
          REGISTER_BET_TEXT,
          style: TextStyle(
            fontSize: 17.0,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: 20.0,
              ),
              ExpansionTile(
                maintainState: true,
                collapsedBackgroundColor: Colors.white,
                title: Text(
                  CHOOSE_BET_NUMBER_TEXT,
                ),
                children: [
                  BrnSelectTag(
                    alignment: Alignment.center,
                    tags: tagList,
                    spacing: 12,
                    tagWidth: 50.0,
                    isSingleSelect: false,
                    tagBackgroundColor: Colors.grey[200],
                    selectedTagBackgroundColor: Colors.blueAccent,
                    onSelect: (selectedIndex) {
                      BrnToast.show('$selectedIndex', context);
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              ExpansionTile(
                maintainState: true,
                collapsedBackgroundColor: Colors.white,
                title: Text(
                  CHOOSE_BET_TYPE_TEXT,
                ),
                children: [
                  BrnSelectTag(
                    alignment: Alignment.center,
                    tags: typeList,
                    spacing: 12,
                    fixWidthMode: false,
                    isSingleSelect: true,
                    tagBackgroundColor: Colors.grey[200],
                    selectedTagBackgroundColor: Colors.blueAccent,
                    onSelect: (selectedIndex) {
                      String name = typeList[selectedIndex[0]];
                      BrnToast.show('$name', context);
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              BrnInputText(
                autoFocus: false,
                textEditingController: _amountController,
                maxHeight: 70,
                minHeight: 1,
                minLines: 1,
                maxLength: 10,
                bgColor: Colors.white,
                textString: "",
                textInputAction: TextInputAction.next,
                maxHintLines: 20,
                hint: ENTER_AMOUNT_HINT_TEXT,
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 14),
                onTextChange: (text) {
                  print(text);
                  //print(_passwordController.text);
                },
                onSubmit: (text) {
                  // print(text);
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              BrnInputText(
                autoFocus: false,
                textEditingController: _voucherController,
                maxHeight: 70,
                minHeight: 1,
                minLines: 1,
                maxLength: 50,
                bgColor: Colors.white,
                textString: "",
                textInputAction: TextInputAction.next,
                maxHintLines: 20,
                hint: VOUNCHER_HINT_TEXT,
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 14),
                onTextChange: (text) {
                  print(text);
                  //print(_passwordController.text);
                },
                onSubmit: (text) {
                  // print(text);
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              BrnSmallMainButton(
                title: SAVE_BUTTON_TEXT,
                onTap: () {
                  BrnToast.show('Save', context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
