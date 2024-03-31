import 'package:art_core/theme/app_colors.dart';
import 'package:art_core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:home/presentation/pages/widgets/service_widgets/service_item_model.dart';

class ServiceAndDirectoreItem extends StatelessWidget {
  const ServiceAndDirectoreItem({super.key, required this.servicesItemModel});
  final ServicesItemModel servicesItemModel;
  @override
  Widget build(BuildContext context) {
    return ListView(
      //  shrinkWrap: true,
      //  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: AppColors.primaryColorDark,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 12),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Image.asset(
                    //  height: size * .21,
                    width: double.infinity,
                    servicesItemModel.imageurl,
                    alignment: Alignment.topCenter,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Text(
                    servicesItemModel.text,
                    style: TextStyles.Regular12,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
