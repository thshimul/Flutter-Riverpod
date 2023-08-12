import 'package:ecommerce_riverpod/view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter E Commerce',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}