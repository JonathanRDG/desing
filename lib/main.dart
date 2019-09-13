import 'package:design/src/pages/basic_page.dart';
import 'package:design/src/pages/bottom_page.dart';
import 'package:design/src/pages/scroll_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      initialRoute: 'scroll',
      routes:{
        'basic'       : (BuildContext context)  =>  BasicPage(),
        'scroll'      : (BuildContext context)  =>  ScrollPage(),
        'botons'      : (BuildContext context)  =>  BottomPage()
      }
    );

  }

}
