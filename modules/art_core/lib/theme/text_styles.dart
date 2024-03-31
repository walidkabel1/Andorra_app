import 'package:art_core/theme/app_colors.dart';
import 'package:flutter/material.dart';

abstract class TextStyles {
  static TextStyle Regular12 = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      fontFamily: 'Poppins',
      color: const Color(0xfff606060).withOpacity(0.9));
  static const TextStyle Regular10 = TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w400,
      fontFamily: 'Poppins',
      color: AppColors.assetscolor);
  static const TextStyle light10 = TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w300,
      fontFamily: 'Poppins',
      color: AppColors.assetscolor);
  static const TextStyle SemiBold16 = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      fontFamily: 'Poppins',
      color: AppColors.primaryColorLight);
  static const TextStyle SemiBold10 = TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w600,
      fontFamily: 'Poppins',
      color: AppColors.assetscolor);
  static const TextStyle Medium16 = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      fontFamily: 'Poppins',
      color: AppColors.assetscolor);
  static const TextStyle Medium14 = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      fontFamily: 'Poppins',
      color: AppColors.assetscolor);
  static const TextStyle Medium12primary = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    fontFamily: 'Poppins',
    //  color: Colors.grey   primarycolor
  );
  static const TextStyle Medium12grey = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      fontFamily: 'Poppins',
      color: AppColors.assetscolor);
  static const TextStyle SemiBold12 = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w600,
      fontFamily: 'Poppins',
      color: Color(0xffF7F5F5));
  static const TextStyle light16 = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w300,
      fontFamily: 'Poppins',
      color: AppColors.assetscolor);
  static const TextStyle light12 = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w300,
      fontFamily: 'Poppins',
      color: AppColors.assetscolor);
  static const TextStyle Regular14 = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      fontFamily: 'Poppins',
      color: AppColors.assetscolor);
  static const TextStyle SemiBold14 = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      fontFamily: 'Poppins',
      color: AppColors.assetscolor);
  static const TextStyle Regular16 = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      fontFamily: 'Poppins',
      color: AppColors.assetscolor);
  static const TextStyle SemiBold24 = TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      fontFamily: 'Poppins',
      color: AppColors.primaryColorLight);
}
