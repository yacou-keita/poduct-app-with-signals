import 'package:flutter/material.dart';
import 'package:poduct_app_with_signals/app_color.dart';
import 'package:poduct_app_with_signals/home.dart';

void main() => runApp(const ProductAppWithSignal());

class ProductAppWithSignal extends StatelessWidget {
  const ProductAppWithSignal({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: const Home(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: AppColor.dark),
    );
  }
}

