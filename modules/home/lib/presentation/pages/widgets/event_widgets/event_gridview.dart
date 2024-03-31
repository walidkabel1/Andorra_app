import 'package:art_core/theme/text_styles.dart';
import 'package:core/cache/caching_keys.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:home/presentation/pages/widgets/event_widgets/event_item.dart';
import 'package:home/presentation/pages/widgets/event_widgets/event_item_model.dart';

class EventGridView extends StatelessWidget {
  EventGridView({super.key});
  final List<EventsItemModel> items = [
    EventsItemModel(
        imageurl: "assets/ImageContainer.png",
        title: "Board Game",
        subtitle: "Wed 13 Mar,",
        trailing: const Text(
          "08:00 pm",
          style: TextStyles.light10,
        )),
    EventsItemModel(
        imageurl: "assets/ImageContainer.png",
        title: "Board Game",
        subtitle: "Wed 13 Mar,",
        trailing: const Text(
          "08:00 pm",
          style: TextStyles.light10,
        )),
    EventsItemModel(
        imageurl: "assets/ImageContainer.png",
        title: "Board Game",
        subtitle: "Wed 13 Mar,",
        trailing: const Text(
          "08:00 pm",
          style: TextStyles.light10,
        )),
    EventsItemModel(
        imageurl: "assets/ImageContainer.png",
        title: "Board Game",
        subtitle: "Wed 13 Mar,",
        trailing: const Text(
          "08:00 pm",
          style: TextStyles.light10,
        )),
    EventsItemModel(
        imageurl: "assets/ImageContainer.png",
        title: "Board Game",
        subtitle: "Wed 13 Mar,",
        trailing: const Text(
          "08:00 pm",
          style: TextStyles.light10,
        )),
    EventsItemModel(
        imageurl: "assets/ImageContainer.png",
        title: "Board Game",
        subtitle: "Wed 13 Mar,",
        trailing: const Text(
          "08:00 pm",
          style: TextStyles.light10,
        )),
    EventsItemModel(
        imageurl: "assets/ImageContainer.png",
        title: "Board Game",
        subtitle: "Wed 13 Mar,",
        trailing: const Text(
          "08:00 pm",
          style: TextStyles.light10,
        )),
    EventsItemModel(
        imageurl: "assets/ImageContainer.png",
        title: "Board Game",
        subtitle: "Wed 13 Mar,",
        trailing: const Text(
          "08:00 pm",
          style: TextStyles.light10,
        )),
    EventsItemModel(
        imageurl: "assets/ImageContainer.png",
        title: "Board Game",
        subtitle: "Wed 13 Mar,",
        trailing: const Text(
          "08:00 pm",
          style: TextStyles.light10,
        )),
    EventsItemModel(
        imageurl: "assets/ImageContainer.png",
        title: "Board Game",
        subtitle: "Wed 13 Mar,",
        trailing: const Text(
          "08:00 pm",
          style: TextStyles.light10,
        )),
    EventsItemModel(
        imageurl: "assets/ImageContainer.png",
        title: "Board Game",
        subtitle: "Wed 13 Mar,",
        trailing: const Text(
          "08:00 pm",
          style: TextStyles.light10,
        )),
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 1,
          crossAxisCount: 2,
          mainAxisSpacing: 7,
          crossAxisSpacing: 16),
      itemCount: 10,
      itemBuilder: (context, index) {
        return GestureDetector(
            onTap: () {
              Modular.to
                  .pushNamed(NavigatorKeys.HomePage + NavigatorKeys.EVENT_PAGE);
            },
            child: EventsItem(eventsItemModel: items[index]));
      },
    );
  }
}
