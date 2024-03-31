import 'package:art_core/theme/app_colors.dart';
import 'package:art_core/theme/text_styles.dart';
import 'package:flutter/material.dart';

class OffersPage extends StatelessWidget {
  const OffersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'Offers',
              style:
                  TextStyles.SemiBold16.copyWith(color: AppColors.assetscolor),
            ),
          ),
        ),
        Container(
          child: Image.asset('assets/offersimage.png'),
        ),
        const Text(
          'You have no offers yet',
          style: TextStyles.light16,
        ),
      ],
    );
  }
}
