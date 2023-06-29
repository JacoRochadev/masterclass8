import 'package:desafio_telas1/components/button_component.dart';
import 'package:desafio_telas1/components/logo_component.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const LogoComponent(),
          const SizedBox(height: 25),
          Text(
            'Get your Money\nunder control',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Colors.white,
                ),
          ),
          const SizedBox(height: 16),
          Text(
            'Manage your expenses\nSeamlessly',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: Colors.grey,
                ),
          ),
          const SizedBox(height: 30),
          const ButtonComponent(
            label: 'Sing Up with Email ID',
          ),
          const ButtonComponent(
            label: 'Sing Up with Google',
            color: Colors.white,
            textColor: Colors.black,
            image: 'assets/images/logo_google.png',
          ),
          const SizedBox(height: 30),
          Text.rich(
            TextSpan(
              text: 'Already have an account? ',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Colors.white,
                  ),
              children: [
                TextSpan(
                  text: 'Sing In',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white,
                        decorationStyle: TextDecorationStyle.solid,
                      ),
                )
              ],
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
