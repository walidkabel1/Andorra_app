import 'package:art_core/theme/app_colors.dart';
import "package:fl_country_code_picker/fl_country_code_picker.dart";
import 'package:flutter/material.dart';

class HelperCountryCode {
  static const object = FlCountryCodePicker(
    localize: true,
    showDialCode: true,
    showSearchBar: true,

    countryTextStyle: TextStyle(color: AppColors.secondaryColor),
    dialCodeTextStyle: TextStyle(color: AppColors.secondaryColor),
    searchBarDecoration: InputDecoration(
      hintText: 'search',
      hintStyle: TextStyle(color: AppColors.secondaryColor),
      border: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.secondaryColor)),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.secondaryColor)),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.secondaryColor)),
    ),

    //  AppText(text: "select_country".tr(), color: AppColors.secondaryColor)
    //     .marginSymmetric(horizontal: 16, vertical: 8),
  );
}
