import 'package:flutter/material.dart';
import 'package:my_signal_app_fltr/product_page.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.teal,
        scaffoldBackgroundColor: Colors.white
      ),
      home: ProductPage(),
    );
  }
}
