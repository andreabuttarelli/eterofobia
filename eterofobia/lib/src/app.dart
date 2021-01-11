import 'package:eterofobia/src/pages/home/home.dart';
import 'package:eterofobia/src/socials/death-counter.dart';
import 'package:flutter/material.dart';

class EterofobiaApp extends StatelessWidget {
  const EterofobiaApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
