import 'package:art_core/theme/app_colors.dart';
import 'package:art_core/theme/text_styles.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:home/presentation/pages/event/event_widgets/event_action_button.dart';

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
                fit: BoxFit.cover,
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              height: MediaQuery.of(context).size.height / 2.5,
              color: const Color(0xfff7f5f5),
              child: const Column(
                children: [
                  Expanded(child: EventItemDetailsListView()),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class EventItemDetails extends StatelessWidget {
  const EventItemDetails({super.key, required this.eventItemDetailsModel});
  final EventItemDetailsModel eventItemDetailsModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(eventItemDetailsModel.iconData),
        const SizedBox(
          width: 8,
        ),
        Text(
          eventItemDetailsModel.text,
          style: TextStyles.Regular12,
        )
      ],
    );
  }
}

class EventItemDetailsModel {
  final IconData iconData;
  final String text;

  EventItemDetailsModel({required this.iconData, required this.text});
}

class EventItemDetailsListView extends StatefulWidget {
  const EventItemDetailsListView({super.key});

  @override
  State<EventItemDetailsListView> createState() =>
      _EventItemDetailsListViewState();
}

class _EventItemDetailsListViewState extends State<EventItemDetailsListView> {
  List<EventItemDetailsModel> events = [
    EventItemDetailsModel(
        iconData: Icons.access_time_sharp,
        text: '28 Mar 03:00 pm - 28 Mar 05:00 pm'),
    EventItemDetailsModel(iconData: Icons.phone, text: '+966 54 615 2483'),
    EventItemDetailsModel(
        iconData: Icons.mail, text: 'Events@andorravillage.net'),
    EventItemDetailsModel(
        iconData: Icons.location_on_outlined, text: 'Entertainment Hall'),
    EventItemDetailsModel(
        iconData: Icons.check_circle_outline_outlined,
        text: '30 People are going'),
    EventItemDetailsModel(
        iconData: Icons.access_time_filled_rounded,
        text: '3 pm - 4 pm for 2-6yrs old'),
    EventItemDetailsModel(
        iconData: Icons.more_time_outlined, text: '4 pm - 5 pm for 7+yrs old'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: events.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: EventItemDetails(eventItemDetailsModel: events[index]),
        );
      },
    );
  }
}
