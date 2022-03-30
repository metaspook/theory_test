import 'package:flutter/material.dart';

class ExtraPageCardButton extends StatelessWidget {
  const ExtraPageCardButton(
      {Key? key, required this.title, required this.onTap})
      : super(key: key);
  final String title;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return GestureDetector(
      onTap: onTap,
      child: Card(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: IntrinsicHeight(
          child: Row(
            children: [
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: Colors.black.withOpacity(0.75)),
              ),
              Spacer(),
              VerticalDivider(
                thickness: 2,
                // color: Colors.black,
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                color: colorScheme.primary,
              )
            ],
          ),
        ),
      )),
    );
  }
}
