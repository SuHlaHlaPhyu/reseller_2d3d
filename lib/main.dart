import 'package:flutter/material.dart';
import 'app_modules.dart';
import 'app_widget.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() {
  runApp(
    ModularApp(
      module: AppModule(),
      child: AppWidget(),
    ),
  );
}
// fvm flutter pub get && fvm flutter pub run build_runner build --delete-conflicting-outputs
