import 'package:assigment/app/util/dependency.dart';
import 'package:assigment/presentation/app.dart';
import 'package:flutter/material.dart';

void main() async {
  DependencyCreator.init();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(App());
}
