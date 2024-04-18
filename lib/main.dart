import 'package:flutter/material.dart';
import 'package:my_new_ecommerce_app/di/di.dart';
import 'package:my_new_ecommerce_app/presentation/ui/home/tabs/home_tab/home_screen.dart';

void main() {
  configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
