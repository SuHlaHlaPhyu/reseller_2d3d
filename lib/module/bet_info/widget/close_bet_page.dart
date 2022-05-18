import 'package:flutter/material.dart';
import 'package:bruno/bruno.dart';
import 'package:reseller_2d3d/resourses/strings.dart';

class CloseBetPage extends StatefulWidget {
  CloseBetPage({Key key}) : super(key: key);

  @override
  _CloseBetPageState createState() => _CloseBetPageState();
}

class _CloseBetPageState extends State<CloseBetPage> {
  TextEditingController _noteController = new TextEditingController();
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
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BrnAppBar(
        title: Text(
          CLOSE_BET_TEXT,
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
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: 20.0,
              ),
              ExpansionTile(
                maintainState: true,
                collapsedBackgroundColor: Colors.white,
                title: Text(
                  CHOOSE_TODAY_BET_NUMBER_TEXT,
                ),
                children: [
                  BrnSelectTag(
                    alignment: Alignment.center,
                    tags: tagList,
                    spacing: 12,
                    tagWidth: 50.0,
                    isSingleSelect: true,
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
              BrnInputText(
                autoFocus: false,
                textEditingController: _noteController,
                maxHeight: 70,
                minHeight: 1,
                minLines: 1,
                maxLength: 50,
                bgColor: Colors.white,
                textString: "",
                textInputAction: TextInputAction.next,
                maxHintLines: 20,
                hint: NOTE_HINT_TEXT,
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
                title: CLOSE_BET_BUTTON_TEXT,
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
