import 'package:art_core/theme/app_colors.dart';
import 'package:art_core/theme/text_styles.dart';
import 'package:flutter/material.dart';

class EventActionButton extends StatelessWidget {
  const EventActionButton(
      {super.key,
      required this.icon,
      required this.text,
      required this.iconcolor});
  final Icon icon;
  final String text;
  final Color iconcolor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ElevatedButton.styleFrom(
            shape: const BeveledRectangleBorder(),
            backgroundColor: const Color(0xffEDEDED)),
        child: Row(
          children: [
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColors.assetscolor)),
              child: icon,
            ),
            const SizedBox(
              width: 6,
            ),
            Text(
              text,
              style:
                  TextStyles.Regular14.copyWith(color: AppColors.hinttextcolor),
            ),
          ],
        ),
        onPressed: () {});
  }
}
