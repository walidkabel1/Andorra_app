import 'package:art_core/theme/app_colors.dart';
import 'package:art_core/theme/text_styles.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';

class DirectoryItemPage extends StatelessWidget {
  const DirectoryItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          leading: GestureDetector(
              onTap: () {
                Modular.to.pop();
              },
              child: const Icon(Icons.arrow_back_ios_new)),
          title: Text(
            'Board Game',
            style: TextStyles.SemiBold16.copyWith(color: AppColors.assetscolor),
          )),
      body: Column(
        children: [
          SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 4,
              child: Image.asset(
                'assets/ImageContainer.png',
                fit: BoxFit.cover,
              )),
          const SizedBox(
            height: 24,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Text(
                  "About",
                  style: TextStyles.SemiBold14,
                ),
                SizedBox(
                  height: 16,
                ),
                Text('data')
              ],
            ),
          )
        ],
      ),
    );
  }
}
// class DirectoryItemdetailsModel {
//   final String discription , phone , location ,;
// }