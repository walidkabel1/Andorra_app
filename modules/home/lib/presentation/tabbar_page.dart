import 'package:art_core/theme/text_styles.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';

class TabbBar extends StatelessWidget {
  const TabbBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 56,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/1.png",
                    width: 124,
                    height: 28,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            title: const Text(
              'Welcome Back',
              style: TextStyles.SemiBold16,
            ),
            subtitle: const Text(
              "User Name Here",
              style: TextStyles.Medium14,
            ),
            leading: Image.asset("assets/15409.png"),
            trailing: SvgPicture.asset('assets/comment1.svg'),
          ),
        ],
      )),
    );
  }
}
