import 'package:flutter/material.dart';

class OutlinedButtonCustom extends StatelessWidget {
  final IconData icon;
  final String label;
  const OutlinedButtonCustom({
    super.key,
    required this.label,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 35,
          decoration: const BoxDecoration(
            border: Border.fromBorderSide(
              BorderSide(
                color: Colors.white,
                width: 1,
              ),
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          alignment: Alignment.center,
          child: Text(
            label,
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: Colors.white,
                ),
          ),
        ),
        Positioned(
          left: 10.5,
          top: 10.5,
          child: Icon(
            icon,
            color: Colors.white,
            size: 15,
          ),
        ),
      ],
    );
  }
}
