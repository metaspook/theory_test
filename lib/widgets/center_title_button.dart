import 'package:flutter/material.dart';

class CenterTitleButton extends StatelessWidget {
  const CenterTitleButton({
    Key? key,
    this.color,
    this.titleColor,
    required this.title,
    required this.onPressed,
  }) : super(key: key);
  final String? title;
  final Color? color, titleColor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(15),
        primary: color,
        onPrimary: titleColor,
        textStyle: Theme.of(context)
            .textTheme
            .titleLarge!
            .copyWith(fontWeight: FontWeight.bold),
        elevation: 5,
        shadowColor: Colors.white.withOpacity(0.85),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: onPressed,
      child: Text(title ?? ''),
    );
  }
}
