import 'package:flutter/material.dart';
import 'package:my_new_ecommerce_app/presentation/ui/home/tabs/home_tab/home_tab_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Route E-commerce App'),
      ),
      body: HomeTabView(),
    );
  }
}
