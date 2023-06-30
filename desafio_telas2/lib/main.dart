import 'package:desafio_telas2/components/outlined_button_custom.dart';
import 'package:desafio_telas2/components/text_rich_custom.dart';
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
      home: Scaffold(
        backgroundColor: Colors.pinkAccent,
        appBar: AppBar(
          shadowColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          leading: const Icon(
            Icons.arrow_back_ios_new_rounded,
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/logo_tinder.png',
                  height: 130,
                ),
                const TextRichCustom(),
                const SizedBox(
                  height: 20,
                ),
                const OutlinedButtonCustom(
                  label: 'SING IN WITH APPLE',
                  icon: Icons.apple,
                ),
                const SizedBox(
                  height: 20,
                ),
                const OutlinedButtonCustom(
                  label: 'SING IN WITH FACEBOOK',
                  icon: Icons.facebook,
                ),
                const SizedBox(
                  height: 20,
                ),
                const OutlinedButtonCustom(
                  label: 'SING IN WITH PHONE NUMBER',
                  icon: Icons.messenger_sharp,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Trouble Signing In?',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.white,
                      ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
