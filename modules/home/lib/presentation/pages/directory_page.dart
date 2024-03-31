import 'package:art_core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:home/presentation/pages/widgets/directory_widgets/directory_listview.dart';
import 'package:home/presentation/pages/widgets/service_widgets/service_item_model.dart';

class DirectoryPage extends StatefulWidget {
  const DirectoryPage({super.key});

  @override
  State<DirectoryPage> createState() => _DirectoryPageState();
}

class _DirectoryPageState extends State<DirectoryPage> {
  final List<ServicesItemModel> items = [
    ServicesItemModel(imageurl: "assets/man.png", text: "McDonald's"),
    ServicesItemModel(imageurl: "assets/paul.png", text: "PAUL"),
    ServicesItemModel(imageurl: "assets/man.png", text: "McDonald's"),
    ServicesItemModel(imageurl: "assets/paul.png", text: "PAUL"),
    ServicesItemModel(imageurl: "assets/man.png", text: "McDonald's"),
    ServicesItemModel(imageurl: "assets/paul.png", text: "PAUL"),
  ];

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'Food and Beverage',
              style: TextStyles.Medium14,
            ),
          ),
          DirectoryListView(size: size, items: items),
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text('Food and Beverage', style: TextStyles.Medium14),
          ),
          DirectoryListView(size: size, items: items),
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text('Food and Beverage', style: TextStyles.Medium14),
          ),
          DirectoryListView(size: size, items: items),
        ],
      ),
    );
  }
}



// class FoodAndBaverageSection extends StatefulWidget {
//   const FoodAndBaverageSection({super.key});

//   @override
//   State<FoodAndBaverageSection> createState() => _FoodAndBaverageSectionState();
// }

// class _FoodAndBaverageSectionState extends State<FoodAndBaverageSection> {

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 500,
//       child: ListView.builder(
//         scrollDirection: Axis.horizontal,
//         itemCount: items.length,
//         itemBuilder: (context, index) {
//           return DirectoryItem(
//             servicesItemModel: items[index],
//           );
//         },
//       ),
//     );
//   }
// }

