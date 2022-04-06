import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theory_test/controllers/settings_controller.dart';
import 'package:theory_test/widgets/bottom_sheet_tiles.dart';
import 'package:theory_test/widgets/divide_arrow_button.dart';

class ModalBottomSheetMod extends StatelessWidget {
  const ModalBottomSheetMod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final provider = context.watch<SettingsController>();
    return DivideArrowButton(
      title: 'Reset Scores',
      titleBold: true,
      color: colorScheme.secondary,
      titleColor: Colors.grey.shade700,
      arrowColor: colorScheme.primary,
      onPressed: () {
        showModalBottomSheet(
            context: context,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(7.5),
                  topRight: Radius.circular(7.5)),
            ),
            builder: (context) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    BottomSheetTiles(
                      title: 'Reset your scores',
                      titleColor: Colors.grey.withOpacity(0.2),
                      constraints: const BoxConstraints(maxHeight: 35),
                      onPressed: null,
                    ),
                    for (var e in provider.resetTitles) ...[
                      Divider(
                        color: Colors.grey.withOpacity(0.5),
                        thickness: 1.5,
                      ),
                      BottomSheetTiles(
                        color: Colors.grey.shade700,
                        title: e,
                        constraints: const BoxConstraints(maxHeight: 35),
                        onPressed: () => context
                            .read<SettingsController>()
                            .resetByIndex(
                                context, provider.resetTitles.indexOf(e)),
                      ),
                    ],
                  ],
                ),
              );
            });
      },
    );
  }
}
