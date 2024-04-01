import 'package:art_core/theme/app_colors.dart';
import 'package:art_core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:home/presentation/pages/event/event_widgets/event_item_model.dart';

class EventsItem extends StatelessWidget {
  const EventsItem({
    super.key,
    required this.eventsItemModel,
  });
  final EventsItemModel eventsItemModel;
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Container(
          //   height: size * .194,
          //   width: size1 * .20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: AppColors.primaryColorDark,
          ),
          child: Column(
            children: [
              ClipRRect(
                // should be required to use Aspect ratio
                borderRadius: BorderRadius.circular(6),
                child: Image.asset(
                  //  height: size * .21,
                  width: double.infinity,
                  eventsItemModel.imageurl,
                  alignment: Alignment.topCenter,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                //     width: size * .2,
                child: ListTile(
                    //  horizontalTitleGap: 16,
                    //  contentPadding: EdgeInsets.zero,
                    title: Text(eventsItemModel.title,
                        maxLines: 1, style: TextStyles.SemiBold10),
                    subtitle: Text(
                      eventsItemModel.subtitle,
                      maxLines: 1,
                      style: TextStyles.light10,
                    ),
                    trailing: eventsItemModel.trailing),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
