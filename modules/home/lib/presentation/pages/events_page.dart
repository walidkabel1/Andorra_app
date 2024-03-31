import 'package:art_core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:home/presentation/pages/widgets/event_widgets/event_gridview.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Events",
              style: TextStyles.Medium14,
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: EventGridView(),
          ))
        ],
      ),
    );
  }
}
