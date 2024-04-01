import 'package:art_core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:home/presentation/pages/event/event_widgets/event_item_model.dart';

import 'event/event_widgets/event_item.dart';
import 'services/service_widgets/service_gridview.dart';

class ServicesPage extends StatefulWidget {
  const ServicesPage({super.key});

  @override
  State<ServicesPage> createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.height;
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: size * 0.35,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Last Services Requested',
                    style: TextStyles.Medium14,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: EventsItem(
                        eventsItemModel: EventsItemModel(
                            imageurl: "assets/servicesphoto.png",
                            title: "Air Conditioning",
                            subtitle: 'Wed 13 Mar, 2024',
                            trailing: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xffF4B105)),
                                onPressed: () {},
                                child: Text(
                                  'Created',
                                  style: TextStyles.SemiBold12.copyWith(
                                      color: const Color(0xfff7f5f5)),
                                )))),
                  ),
                ),
                const SizedBox(
                  height: 8,
                )
              ],
            ),
          ),
        ),
        const SliverFillRemaining(
          // fillOverscroll: true,
          hasScrollBody: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Text(
                  'Services',
                  style: TextStyles.Medium14,
                ),
              ),
              Expanded(child: ServicesgridView()),
            ],
          ),
        )
      ],
    );
  }
}
