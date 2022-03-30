import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return AppBar(
      iconTheme: IconThemeData(color: colorScheme.primary),
      backgroundColor: colorScheme.secondary,
      elevation: 0,
      // automaticallyImplyLeading: false,
      leading: const Icon(Icons.dashboard_outlined),
      actions: const [
        Icon(Icons.share_outlined),
        SizedBox(width: 10),
      ],
      centerTitle: true,
      title: Text(
        title,
        style: TextStyle(color: colorScheme.primary),
      ),
    );
  }
}
