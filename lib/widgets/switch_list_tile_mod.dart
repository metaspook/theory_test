import 'package:flutter/material.dart';

class SwitchListTileMod extends StatelessWidget {
  const SwitchListTileMod(
      {Key? key,
      this.color,
      this.title,
      this.subtitle,
      required this.value,
      required this.onChanged})
      : super(key: key);
  final Color? color;
  final String? title, subtitle;
  final bool value;
  final void Function(bool)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 2.5, vertical: 7.5),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
        boxShadow: color == null
            ? null
            : [
                BoxShadow(
                  offset: const Offset(0, 1.5),
                  color: Colors.grey.withOpacity(0.175),
                  spreadRadius: 1.75,
                  blurRadius: 1.75,
                ),
              ],
      ),
      child: SwitchListTile.adaptive(
        title: Text(
          title!,
          style: TextStyle(
              color: Colors.grey.shade800, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(subtitle!),
        value: value,
        onChanged: onChanged,
      ),
    );
  }
}
