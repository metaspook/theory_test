import 'package:flutter/material.dart';

class DivideArrowButton extends StatelessWidget {
  const DivideArrowButton({
    Key? key,
    this.arrowColor,
    this.color,
    this.titleColor,
    required this.title,
    required this.onPressed,
  }) : super(key: key);
  final String? title;
  final Color? arrowColor, color, titleColor;
  final void Function()? onPressed;

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
      child: IntrinsicHeight(
        child: Row(
          children: [
            Text(title ?? ''),
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
