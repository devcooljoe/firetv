import 'package:firetv/screens/navigation_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

Future<void> main() async {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    systemNavigationBarColor: Colors.transparent,
  ));
  runApp(const FireTV());
}

class FireTV extends StatelessWidget {
  const FireTV({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'FireTV',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: NavigationScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
