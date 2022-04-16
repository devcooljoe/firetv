import 'package:firetv/screens/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FireTV());
}

class FireTV extends StatelessWidget {
  const FireTV({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
