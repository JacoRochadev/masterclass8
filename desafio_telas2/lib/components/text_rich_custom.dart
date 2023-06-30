import 'package:flutter/material.dart';

class TextRichCustom extends StatelessWidget {
  const TextRichCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: 'By tapping Create Account or Sing In, you agree to our ',
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: Colors.white,
            ),
        children: [
          TextSpan(
            text: 'Terms. ',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.white,
                  decorationStyle: TextDecorationStyle.solid,
                ),
          ),
          TextSpan(
            text: 'Learn how we process your data in our ',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.white,
                ),
          ),
          TextSpan(
            text: 'Privacy Policy  ',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.white,
                  decorationStyle: TextDecorationStyle.solid,
                ),
          ),
          TextSpan(
            text: 'and ',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.white,
                ),
          ),
          TextSpan(
            text: 'Cookies Policy.',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.white,
                  decorationStyle: TextDecorationStyle.solid,
                ),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
