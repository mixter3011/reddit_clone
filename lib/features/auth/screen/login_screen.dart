import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:reddit_clone/core/common/sign_in_button.dart';
import 'package:reddit_clone/core/constants/constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Blurred background image
          ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
            child: Image.asset(
              'assets/images/login_page_backgorund.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          Column(
            children: [
              AppBar(
                backgroundColor: Colors.white.withOpacity(0.3),
                title: Padding(
                  padding: const EdgeInsets.only(left: 171, top: 10),
                  child: Image.asset(
                    Constants.logoPath,
                    height: 40,
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(right: 18.0),
                      child: Text(
                        'Skip',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[900],
                          fontFamily: 'Cera Pro',
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Dive into Anything',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: 'Cera Pro',
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5,
                ),
              ),
              Center(
                child: Image.asset(
                  'assets/images/loginEmote.png',
                  height: 400,
                  width: 400,
                ),
              ),
              const SignInButton(),
            ],
          ),
        ],
      ),
    );
  }
}
