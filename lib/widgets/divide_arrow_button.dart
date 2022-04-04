import 'package:flutter/material.dart';
import 'package:theory_test/widgets/elevated_button_mod.dart';

class DivideArrowButton extends StatelessWidget {
  const DivideArrowButton({
    Key? key,
    this.arrowColor,
    this.color,
    this.titleBold = false,
    this.titleColor,
    required this.title,
    required this.onPressed,
  }) : super(key: key);
  final String? title;
  final bool titleBold;
  final Color? arrowColor, color, titleColor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButtonMod(
      color: color,
      titleColor: titleColor,
      onPressed: onPressed,
      child: IntrinsicHeight(
        child: Row(
          children: [
            Text(
              title ?? '',
              style: TextStyle(fontWeight: titleBold ? FontWeight.bold : null),
            ),
            const Spacer(),
            const VerticalDivider(thickness: 2),
            Icon(
              Icons.arrow_forward_ios_rounded,
              color: arrowColor,
            )
          ],
        ),
      ),
    );
  }
}
