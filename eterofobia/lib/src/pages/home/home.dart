import 'package:eterofobia/src/pages/home/body.dart';
import 'package:eterofobia/src/widgets/wrapper_container.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: WrappedContainer(
        child: Body(),
      ),
    );
  }
}
