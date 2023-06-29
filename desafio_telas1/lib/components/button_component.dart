import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  final String label;
  final String? image;
  final Color? color;
  final Color? textColor;
  const ButtonComponent({
    super.key,
    required this.label,
    this.image,
    this.color = Colors.blue,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      child: Container(
        height: 35,
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (image != null)
              Image.asset(
                image!,
                height: 15,
              ),
            const SizedBox(width: 8),
            Text(
              label,
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: textColor ?? Colors.white,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
