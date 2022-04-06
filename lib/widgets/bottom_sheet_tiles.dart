import 'package:flutter/material.dart';

class BottomSheetTiles extends StatelessWidget {
  const BottomSheetTiles({
    Key? key,
    this.color,
    this.titleColor,
    required this.title,
    required this.onPressed,
    this.constraints,
  }) : super(key: key);
  final String? title;
  final BoxConstraints? constraints;
  final Color? color, titleColor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: constraints == null
          ? const BoxConstraints(maxHeight: 0, maxWidth: 0)
          : constraints!,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          primary: color,
          // alignment: Alignment.center,
          textStyle: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: titleColor, fontWeight: FontWeight.normal),
          padding: const EdgeInsets.all(0),
        ),
        child: Text(
          title!,
          // textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
