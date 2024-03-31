import 'package:flutter/material.dart';
import 'package:home/presentation/pages/widgets/directory_widgets/directory_item.dart';
import 'package:home/presentation/pages/widgets/service_widgets/service_item_model.dart';

class DirectoryListView extends StatelessWidget {
  const DirectoryListView({
    super.key,
    required this.size,
    required this.items,
  });

  final double size;
  final List<ServicesItemModel> items;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: size / 3),
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return SizedBox(
            height: size / 3,
            child: DirectoryItem(
              servicesItemModel: items[index],
            ),
          );
        },
      ),
    );
  }
}
