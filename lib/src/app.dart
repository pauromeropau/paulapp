import 'package:flutter/material.dart';
import 'package:paulapp/pages/contador_pages.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
   git     debugShowCheckedModeBanner: false,
        home: Center(
          // child: HomePage(),
          child: ContadorPage(),
        ));
  }
}
