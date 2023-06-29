import 'package:flutter/material.dart';

class LogoComponent extends StatelessWidget {
  const LogoComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: const BoxDecoration(
                    color: Color(0xFF5E5CE5),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Container(
                width: 30,
                height: 30,
                decoration: const BoxDecoration(
                  color: Color(0xFF5E5CE5),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(1),
                    topLeft: Radius.circular(1),
                    topRight: Radius.circular(1),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 30,
          height: 68,
          decoration: const BoxDecoration(
            color: Color(0xFF5E5CE5),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(1),
              topLeft: Radius.circular(1),
              topRight: Radius.circular(30),
            ),
          ),
        ),
      ],
    );
  }
}
