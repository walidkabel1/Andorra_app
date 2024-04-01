import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';

class ServicePageItem extends StatelessWidget {
  const ServicePageItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
              onTap: () {
                Modular.to.pop();
              },
              child: const Icon(Icons.arrow_back_ios_new_outlined)),
        ),
        body: Container());
  }
}
