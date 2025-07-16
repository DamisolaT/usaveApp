import 'package:flutter/material.dart';

import 'package:my_naija_bank/features/auth/login_page.dart';
import 'dart:async';

import 'package:my_naija_bank/shared/assets/assets.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        // ignore: use_build_context_synchronously
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppAssets.splashBg, height: 120),
            const SizedBox(height: 20),
            const Text(
              'uSave',
              style: TextStyle(
                fontSize: 52,
                fontWeight: FontWeight.bold,
                color: Color(0xFF008000), // Green theme color
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Save. Withdraw. Build.',
              style: TextStyle(fontSize: 16, color: Color(0xFF008000)),
            ),
          ],
        ),
      ),
    );
  }
}
