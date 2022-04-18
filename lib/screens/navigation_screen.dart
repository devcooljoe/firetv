import 'package:firetv/screens/home_screen.dart';
import 'package:firetv/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(() => LoginScreen(), transition: Transition.zoom);
              },
              child: const Text('Login'),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Get.to(() => HomeScreen(), transition: Transition.zoom);
              },
              child: const Text('Home'),
            ),
          ],
        ),
      ),
    );
  }
}
