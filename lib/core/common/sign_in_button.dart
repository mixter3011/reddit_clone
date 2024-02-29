import 'package:flutter/material.dart';
import 'package:reddit_clone/core/constants/constants.dart';


class SignInButton extends StatelessWidget {
  const SignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: ElevatedButton.icon(
        onPressed: () {}, 
        icon: Image.asset(Constants.googlePath, width: 35,
       ), 
       label: const Text(
        'Continue with Google', 
         style: TextStyle(fontSize: 18),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey.withOpacity(0.3),
          minimumSize: const Size(double.infinity, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          )
        )
      ),
    );
  }
}