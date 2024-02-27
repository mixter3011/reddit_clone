import 'package:flutter/material.dart';
import 'package:reddit_clone/core/constants/constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/login_page_backgorund.jpg', 
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Column(
            children: [
              AppBar(
                backgroundColor: Colors.white.withOpacity(0.2), 
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
                    child: const Text(
                      'Skip', 
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
