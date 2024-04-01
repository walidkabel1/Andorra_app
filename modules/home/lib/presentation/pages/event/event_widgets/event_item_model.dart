import 'package:flutter/material.dart';

class EventsItemModel {
  final String imageurl, title, subtitle;
  final Widget trailing;
  EventsItemModel(
      {required this.imageurl,
      required this.title,
      required this.subtitle,
      required this.trailing});
}
