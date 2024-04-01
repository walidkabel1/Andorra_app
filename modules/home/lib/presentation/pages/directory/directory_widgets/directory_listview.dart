import 'package:core/cache/caching_keys.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:home/presentation/pages/directory/directory_widgets/directory_item.dart';
import 'package:home/presentation/pages/services/service_widgets/service_item_model.dart';

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
            child: GestureDetector(
              onTap: () {
                Modular.to.pushNamed(
                    NavigatorKeys.HomePage + NavigatorKeys.directory_PAGE);
              },
              child: DirectoryItem(
                servicesItemModel: items[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
