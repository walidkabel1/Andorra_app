import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppLoading extends StatelessWidget {
  final Color? color;

  const AppLoading({Key? key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoActivityIndicator(
      color: color ?? Colors.grey,
      radius: 20,
    );
  }
}
