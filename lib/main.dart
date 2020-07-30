
import 'package:flutter/material.dart';
import 'package:pspsystem/src/pages/login_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Psp System',
      initialRoute: '/',
      routes: {
        '/' : (BuildContext context) => LoginPage(),
      },
    );
  }
}