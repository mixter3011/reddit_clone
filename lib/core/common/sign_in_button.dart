import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reddit_clone/core/constants/constants.dart';
import 'package:reddit_clone/features/auth/controller/auth_controller.dart';


class SignInButton extends ConsumerWidget {
  const SignInButton({Key? key}) : super(key: key);

  void signInWithGoogle(WidgetRef ref) {
    ref.read(authControllerProvider).signInWithGoogle();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: ElevatedButton.icon(
        onPressed: () => signInWithGoogle(ref), 
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