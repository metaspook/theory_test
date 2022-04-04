import 'package:flutter/material.dart';

class ElevatedButtonMod extends StatelessWidget {
  const ElevatedButtonMod({
    Key? key,
    this.color,
    this.titleColor,
    required this.onPressed,
    required this.child,
  }) : super(key: key);
  final Color? color, titleColor;
  final void Function()? onPressed;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        primary: color,
        onPrimary: titleColor,
        textStyle: Theme.of(context).textTheme.subtitle1,
        elevation: 5,
        shadowColor: Colors.white.withOpacity(0.85),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
