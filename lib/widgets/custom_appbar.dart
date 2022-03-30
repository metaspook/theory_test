import 'package:flutter/material.dart';
import 'package:theory_test/utils/method.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key, required this.title, this.iconData})
      : super(key: key);
  // const CustomAppBar.secondary({Key? key, required this.title}) : super(key: key);
  final String title;
  final IconData? iconData;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return AppBar(
      iconTheme: IconThemeData(color: colorScheme.primary),
      backgroundColor: colorScheme.secondary,
      elevation: 0,
      // automaticallyImplyLeading: true,

      leading: iconData == null
          ? IconButton(
              icon: Icon(Icons.arrow_back_ios_rounded),
              onPressed: () => Method.goBack(context),
            )
          : IconButton(
              icon: Icon(
                iconData,
                color: colorScheme.primary,
              ),
              onPressed: () => Method.goHome(context),
            ),
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
