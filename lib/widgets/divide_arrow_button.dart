import 'package:flutter/material.dart';

class DivideArrowButton extends StatelessWidget {
  const DivideArrowButton({
    Key? key,
    this.arrowColor,
    this.color,
    this.leading,
    this.title,
    this.subtitle,
    this.trailing,
    this.onTap,
  }) : super(key: key);
  final Widget? leading;
  final Widget? title;
  final Widget? subtitle;
  final Widget? trailing;

  final Color? arrowColor, color;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 1.5),
            color: Colors.grey.withOpacity(0.175),
            spreadRadius: 1.75,
            blurRadius: 1.75,
          ),
        ],
      ),
      child: ListTile(
        leading: leading,
        title: title,
        subtitle: subtitle,
        trailing: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (trailing != null) trailing!,
            const SizedBox(width: 5),
            const VerticalDivider(
              thickness: 2,
              indent: 10,
              endIndent: 10,
            ),
            const SizedBox(width: 5),
            Icon(
              Icons.arrow_forward_ios_rounded,
              color: arrowColor,
            ),
          ],
        ),
        onTap: onTap,
      ),
    );
  }
}
