import 'dart:developer';

import 'package:adil_project/core/core.dart';
import 'package:adil_project/presentation/loginscreen/loginscreen.dart';
import 'package:adil_project/presentation/navigationbar/navigationbar.dart';
import 'package:flutter/material.dart';

class SpashScreen extends StatelessWidget {
  const SpashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    gotoLogin(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(color: kprimarycolor),
        ),
      ),
    );
  }

  Future<void> gotoLogin(context) async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => BottomnavScreen(selectedindex: 1)
      //  LoginScreen(),
    ));
  }
}
