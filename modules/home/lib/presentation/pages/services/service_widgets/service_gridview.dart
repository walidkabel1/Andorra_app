import 'package:core/cache/caching_keys.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:home/presentation/pages/services/service_widgets/service_and_directory_item.dart';
import 'package:home/presentation/pages/services/service_widgets/service_item_model.dart';

class ServicesgridView extends StatefulWidget {
  const ServicesgridView({super.key});

  @override
  State<ServicesgridView> createState() => _ServicesgridViewState();
}

class _ServicesgridViewState extends State<ServicesgridView> {
  final List<ServicesItemModel> items = [
    ServicesItemModel(
        imageurl: "assets/ImageContainer.png", text: "Air Conditioning"),
    ServicesItemModel(
        imageurl: "assets/ImageContainer.png", text: "Air Conditioning"),
    ServicesItemModel(
        imageurl: "assets/ImageContainer.png", text: "Air Conditioning"),
    ServicesItemModel(
        imageurl: "assets/ImageContainer.png", text: "Air Conditioning"),
    ServicesItemModel(
        imageurl: "assets/ImageContainer.png", text: "Air Conditioning"),
    ServicesItemModel(
        imageurl: "assets/ImageContainer.png", text: "Air Conditioning"),
    ServicesItemModel(
        imageurl: "assets/ImageContainer.png", text: "Air Conditioning"),
    ServicesItemModel(
        imageurl: "assets/servicesphoto.png", text: "Air Conditioning"),
    ServicesItemModel(
        imageurl: "assets/servicesphoto.png", text: "Air Conditioning"),
    ServicesItemModel(
        imageurl: "assets/servicesphoto.png", text: "Air Conditioning"),
    ServicesItemModel(
        imageurl: "assets/servicesphoto.png", text: "Air Conditioning"),
    ServicesItemModel(
        imageurl: "assets/servicesphoto.png", text: "Air Conditioning"),
    ServicesItemModel(
        imageurl: "assets/servicesphoto.png", text: "Air Conditioning"),
    ServicesItemModel(
        imageurl: "assets/servicesphoto.png", text: "Air Conditioning"),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 1,
            crossAxisCount: 2,
            mainAxisSpacing: 0,
            crossAxisSpacing: 6),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                Modular.to.pushNamed(
                    NavigatorKeys.HomePage + NavigatorKeys.service_PAGE);
              },
              child: ServiceAndDirectoreItem(servicesItemModel: items[index]));
        });
  }
}
