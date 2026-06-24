import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:tapshyrma_1/getX_lesson/first/view/first_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(debugShowCheckedModeBanner: false, home: FirstView());
  }
}
