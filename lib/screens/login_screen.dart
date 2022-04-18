import 'dart:ui';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  RxBool checked = false.obs;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            stops: [0.5, 1.0],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff6C3528),
              Colors.black,
            ],
          )),
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Image.asset('assets/images/icon.png', width: 200),
              ),
              const SizedBox(height: 15),
              const Text(
                'WELCOME! SIGN IN',
                style: TextStyle(color: Color(0xffEBC08E), fontSize: 20, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 15),
              Form(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      CustomTextFormField(hintText: 'Username', faIcon: FontAwesomeIcons.solidUser, obscure: false),
                      const SizedBox(height: 20),
                      CustomTextFormField(hintText: 'Password', faIcon: FontAwesomeIcons.lock, obscure: true),
                      const SizedBox(height: 7),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('FORGOT PASSWORD', style: TextStyle(fontSize: 12, color: Colors.white)),
                          TextButton(
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              minimumSize: const Size(0, 0),
                            ),
                            onPressed: () {
                              checked.value = !checked.value;
                            },
                            child: Row(
                              children: [
                                Obx(() => Checkbox(
                                    activeColor: const Color(0xffEBC08E),
                                    side: const BorderSide(color: Color(0xffEBC08E)),
                                    onChanged: (val) {
                                      checked.value = val!;
                                    },
                                    value: checked.value)),
                                const Text(
                                  'REMEMBER ME',
                                  style: TextStyle(color: Colors.white, fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xffEBC08E),
                              Color(0xffBA6D50),
                            ],
                            stops: [0.4, 1.0],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Center(
                          child: Text(
                            'SIGN IN',
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Don\'t have an account?',
                            style: TextStyle(color: Colors.white),
                          ),
                          const SizedBox(width: 5),
                          TextButton(
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              minimumSize: const Size(0, 0),
                            ),
                            onPressed: () {
                              print("Clicked");
                            },
                            child: const Text(
                              'Sign up here',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  final RxBool _obscure = true.obs;
  String hintText;
  IconData faIcon;
  bool obscure;

  CustomTextFormField({
    Key? key,
    required this.hintText,
    required this.faIcon,
    required this.obscure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return _obscure.value == true
          ? TextFormField(
              obscureText: obscure == true ? _obscure.value : false,
              style: const TextStyle(fontSize: 18),
              decoration: InputDecoration(
                suffixIcon: obscure == true
                    ? IconButton(
                        onPressed: () {
                          _obscure.value = !_obscure.value;
                        },
                        icon: const FaIcon(FontAwesomeIcons.eyeSlash, size: 18, color: Color(0xffEBC08E)),
                      )
                    : null,
                hintText: hintText,
                hintStyle: const TextStyle(color: Colors.white),
                filled: true,
                fillColor: const Color(0xffBA6D50),
                focusColor: const Color(0xffBA6D50),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(15),
                ),
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(left: 14, top: 14),
                  child: FaIcon(faIcon, size: 18, color: Colors.white),
                ),
                contentPadding: const EdgeInsets.all(10),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            )
          : TextFormField(
              obscureText: obscure == true ? _obscure.value : false,
              style: const TextStyle(fontSize: 18),
              decoration: InputDecoration(
                suffixIcon: obscure == true
                    ? IconButton(
                        onPressed: () {
                          _obscure.value = !_obscure.value;
                        },
                        icon: const FaIcon(FontAwesomeIcons.eye, size: 18, color: Color(0xffEBC08E)),
                      )
                    : null,
                hintText: hintText,
                hintStyle: const TextStyle(color: Colors.white),
                filled: true,
                fillColor: const Color(0xffBA6D50),
                focusColor: const Color(0xffBA6D50),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(15),
                ),
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(left: 14, top: 14),
                  child: FaIcon(faIcon, size: 18, color: Colors.white),
                ),
                contentPadding: const EdgeInsets.all(10),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            );
    });
  }
}
