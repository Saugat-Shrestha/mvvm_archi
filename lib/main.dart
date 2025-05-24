import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mvvm_architecture/app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(MyApp());
}
