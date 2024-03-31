import 'package:art_core/theme/app_colors.dart';
import 'package:art_core/theme/text_styles.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:home/presentation/pages/widgets/event_widgets/event_action_button.dart';

class EventItemPage extends StatelessWidget {
  const EventItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEDEDED),
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
                fit: BoxFit.fill,
              )),
          const SizedBox(
            height: 24,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Are you going?',
                style: TextStyles.SemiBold16,
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  EventActionButton(
                      iconcolor: AppColors.assetscolor,
                      icon: Icon(
                        Icons.check,
                        size: 12,
                      ),
                      text: 'Going'),
                  SizedBox(width: 9),
                  EventActionButton(
                      iconcolor: AppColors.assetscolor,
                      icon: Icon(
                        Icons.clear,
                        size: 12,
                      ),
                      text: 'Not Interested'),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
