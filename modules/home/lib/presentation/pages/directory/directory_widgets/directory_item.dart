import 'package:art_core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:home/presentation/pages/services/service_widgets/service_item_model.dart';

class DirectoryItem extends StatelessWidget {
  const DirectoryItem({super.key, required this.servicesItemModel});
  final ServicesItemModel servicesItemModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: AppColors.primaryColorDark,
            ),
            child: Column(
              // mainAxisSize: MainAxisSize.min,
              children: [
                LimitedBox(
                  maxWidth: MediaQuery.of(context).size.height * 0.40,
                  maxHeight: MediaQuery.of(context).size.height * 0.20,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: SizedBox(
                          child: Image.asset(servicesItemModel.imageurl))),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(servicesItemModel.text),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
