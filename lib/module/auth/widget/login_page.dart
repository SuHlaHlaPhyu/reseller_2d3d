import 'package:bruno/bruno.dart';
import 'package:flutter/material.dart';
import 'package:reseller_2d3d/module/main/main_modules.dart';
import 'package:reseller_2d3d/module/main/main_routes.dart';
import 'package:reseller_2d3d/resourses/strings.dart';
import 'package:reseller_2d3d/utils/route_utils.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key key}) : super(key: key);

  final TextEditingController _mailController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(
          15.0,
        ),
        child: Center(
          child: LoginFormView(
            _mailController,
            _passwordController,
            () {
              RouteUtils.changeRoute<MainModule>(MainRoutes.root,
                  isReplace: true);
            },
          ),
        ),
      ),
    );
  }
}

class LoginFormView extends StatelessWidget {
  final TextEditingController _mailController;
  final TextEditingController _passwordController;
  final Function _onbtnTap;
  LoginFormView(
    this._mailController,
    this._passwordController,
    this._onbtnTap,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        BrnInputText(
          autoFocus: false,
          textEditingController: _mailController,
          maxHeight: 70,
          minHeight: 1,
          minLines: 1,
          maxLength: 30,
          bgColor: Colors.grey[200],
          textString: "",
          textInputAction: TextInputAction.next,
          maxHintLines: 20,
          hint: EMAIL_HINT_TEXT,
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 14),
          onTextChange: (text) {
            print(text);
            //print(_mailController.text);
          },
          onSubmit: (text) {
            // print(text);
          },
        ),
        SizedBox(
          height: 35.0,
        ),
        BrnInputText(
          autoFocus: false,
          textEditingController: _passwordController,
          maxHeight: 70,
          minHeight: 1,
          minLines: 1,
          maxLength: 10,
          bgColor: Colors.grey[200],
          textString: "",
          textInputAction: TextInputAction.next,
          maxHintLines: 20,
          hint: PASSWORD_HINT_TEXT,
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
          height: 35.0,
        ),
        BrnSmallMainButton(
          title: LOGIN_BUTTON_TEXT,
          onTap: () {
            //BrnToast.show('Login', context);
            _onbtnTap();
          },
        ),
      ],
    );
  }
}
