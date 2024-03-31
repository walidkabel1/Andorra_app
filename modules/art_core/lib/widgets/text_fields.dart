import 'package:art_core/theme/app_colors.dart';
import 'package:art_core/theme/text_styles.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatefulWidget {
  final bool? readOnly;
  final int? maxLines;
  final String? hint;
  final TextStyle? hintStyle;
  final bool isSelectable;

  final bool darkOrAuth;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;

  final String? errorText;
  final Color? borderColor;
  final Color? labelColor;

  final bool isPassword;
  final TextInputType? textInputType;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextEditingController? controller;

  final int? maxLength;

  final VoidCallback? onTap;

  final String? initialText;

  final double contentPaddingVertical;

  final Color? fillColor;
  final Color? hintColor;
  final Color? textColor;
  final bool? filled;
  final bool? enableBorder;
  final bool isRequired;

  const AppTextField({
    Key? key,
    this.readOnly = false,
    this.maxLines = 1,
    this.onTap,
    this.hint,
    this.textInputType,
    this.hintColor,
    this.suffixIcon,
    this.prefixIcon,
    this.darkOrAuth = false,
    this.isPassword = false,
    this.validator,
    this.onChanged,
    this.errorText,
    this.initialText,
    this.borderColor,
    this.hintStyle,
    this.isSelectable = false,
    this.controller,
    this.maxLength,
    this.contentPaddingVertical = 15,
    this.fillColor,
    this.filled,
    this.labelColor,
    this.enableBorder = false,
    this.textColor,
    this.isRequired = true,
  }) : super(key: key);

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      autofocus: false,
      onTap: widget.onTap ?? () {},
      initialValue: widget.initialText,
      enabled: true,
      onEditingComplete: () {
        FocusScope.of(context).unfocus();
      },
      onChanged: widget.onChanged,
      readOnly: widget.readOnly ?? false,
      maxLines: widget.maxLines,
      keyboardType: widget.textInputType,
      obscureText: widget.isPassword == true ? obscureText : false,
      maxLength: widget.maxLength,
      style: TextStyles.Regular12,
      decoration: InputDecoration(
          fillColor: widget.fillColor,
          filled: widget.filled,
          border: widget.enableBorder == false
              ? OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.bordercolor),
                  borderRadius: BorderRadius.circular(6))
              : Theme.of(context).inputDecorationTheme.border?.copyWith(
                  borderSide: BorderSide(
                      color: widget.borderColor ?? AppColors.bordercolor)),
          disabledBorder: widget.enableBorder == false
              ? OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(6))
              : Theme.of(context).inputDecorationTheme.disabledBorder?.copyWith(
                  borderSide: BorderSide(
                      color: widget.borderColor ?? AppColors.bordercolor)),
          enabledBorder: widget.enableBorder == true
              ? OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(6))
              : Theme.of(context).inputDecorationTheme.enabledBorder?.copyWith(
                  borderSide: BorderSide(
                      color: widget.borderColor ?? AppColors.bordercolor)),
          focusedBorder: widget.enableBorder == true
              ? OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(6))
              : Theme.of(context).inputDecorationTheme.focusedBorder?.copyWith(
                  borderSide: BorderSide(
                      color: widget.borderColor ?? AppColors.bordercolor)),
          focusedErrorBorder: widget.enableBorder == true
              ? OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(6))
              : Theme.of(context).inputDecorationTheme.focusedErrorBorder,
          errorBorder: widget.enableBorder == true
              ? OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(6))
              : Theme.of(context).inputDecorationTheme.errorBorder,
          contentPadding: EdgeInsets.symmetric(
              vertical: widget.contentPaddingVertical, horizontal: 8),
          hintText: widget.hint,
          hintStyle: TextStyles.Regular12,
          alignLabelWithHint: true,
          errorText:
              widget.errorText == null || widget.errorText!.isEmpty || widget.errorText == ''
                  ? null
                  : widget.errorText,
          errorMaxLines: 3,
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.suffixIcon ??
              (widget.isPassword
                  ? InkWell(
                      onTap: () {
                        obscureText = !obscureText;
                        setState(() {});
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: SvgPicture.asset(
                          !obscureText
                              ? "assets/eye_on.svg"
                              : "assets/icons_svg/eye_off.svg",
                          height: 18,
                          width: 18,
                          color: const Color(0xff606060),
                        ),
                      ))
                  : widget.isSelectable
                      ? const Icon(
                          CupertinoIcons.chevron_down,
                          color: Color(0xff606060),
                          size: 20,
                        )
                      : const SizedBox())),
    );
  }
}
