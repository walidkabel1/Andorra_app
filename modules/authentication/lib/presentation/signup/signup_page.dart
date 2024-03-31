import 'package:art_core/theme/app_colors.dart';
import 'package:art_core/theme/text_styles.dart';
import 'package:art_core/widgets/buttons/app_button.dart';
import 'package:art_core/widgets/text_fields.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final countrypicker = const FlCountryCodePicker();
  CountryCode? countryCode;
  bool ischecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEDEDED),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () {
            Modular.to.pop();
          },
          child: const Icon(
            Icons.arrow_back_ios,
            size: 16,
          ),
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          const SizedBox(
            height: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Sign up",
                style: TextStyles.SemiBold24,
              ),
              const SizedBox(
                height: 53,
              ),
              Container(
                  height: 68,
                  width: 66,
                  color: const Color(0xffF7F5F5),
                  child: Center(
                    child: SvgPicture.asset(
                      "assets/upload_image.svg",
                      height: 20,
                      width: 18,
                    ),
                  ))
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Name",
                  style: TextStyles.Medium14,
                ),
                const SizedBox(
                  height: 8,
                ),
                const AppTextField(
                  borderColor: AppColors.bordercolor,
                  errorText: null,

                  hint: 'Username',
                  isRequired: true,
                  //   isPassword: true,
                  prefixIcon: Icon(
                    Icons.person,
                    size: 18,
                    color: AppColors.bordercolor,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  "Email",
                  style: TextStyles.Medium14,
                ),
                const SizedBox(
                  height: 8,
                ),
                const AppTextField(
                  borderColor: AppColors.bordercolor,
                  errorText: null,
                  textInputType: TextInputType.emailAddress,
                  hint: 'email@gmail.com',
                  isRequired: true,
                  //   isPassword: true,
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    size: 18,
                    color: AppColors.bordercolor,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  "Phone number",
                  style: TextStyles.Medium14,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () async {
                        final code = await countrypicker.showPicker(
                          context: context,
                        );
                        setState(() {
                          countryCode = code;
                        });
                      },
                      child: Container(
                        height: 50,
                        // margin: EdgeInsets.only(
                        //     bottom: errorPhoneSnapshot.data == '' ? 0 : 22),
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8.0)),
                            border:
                                Border.all(color: AppColors.secondaryColor)),
                        child: Row(
                          children: [
                            Image.asset(
                              countryCode != null
                                  ? countryCode!.flagUri
                                  : "assets/Flag-Egypt 1.png",
                              width: 22,
                              height: 14,
                              package: countryCode != null
                                  ? countryCode!.flagImagePackage
                                  : null,
                              fit: BoxFit.cover,
                              //  package: countryCode.flagImagePackage,
                            ),
                            Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 4),
                                child: Text(
                                  countryCode?.dialCode ?? "+20",
                                  style: TextStyles.Regular16,
                                )),
                            const Icon(CupertinoIcons.chevron_down,
                                color: AppColors.secondaryColor, size: 18),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                        child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 16),
                      child: AppTextField(
                        hint: 'mobile_number'.trim(),
                        prefixIcon: const Icon(
                          CupertinoIcons.phone,
                          size: 18,
                          color: AppColors.secondaryColor,
                        ),
                        textInputType: TextInputType.phone,
                      ),
                    ))
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  "Password",
                  style: TextStyles.Medium14,
                ),
                const SizedBox(
                  height: 8,
                ),
                const AppTextField(
                  borderColor: AppColors.bordercolor,
                  errorText: null,
                  textInputType: TextInputType.emailAddress,
                  hint: 'password',
                  isRequired: true,
                  // isPassword: true,
                  prefixIcon: Icon(
                    Icons.lock_outline_rounded,
                    size: 18,
                    color: AppColors.bordercolor,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  "Car plate number",
                  style: TextStyles.Medium14,
                ),
                const SizedBox(
                  height: 8,
                ),
                const AppTextField(
                  borderColor: AppColors.bordercolor,
                  errorText: null,
                  textInputType: TextInputType.emailAddress,
                  hint: 'GH51254',
                  isRequired: true,
                  prefixIcon: Icon(
                    CupertinoIcons.car_detailed,
                    size: 18,
                    color: AppColors.bordercolor,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Expanded(
                      child: CheckboxListTile(
                          contentPadding: EdgeInsets.zero,
                          controlAffinity: ListTileControlAffinity.leading,
                          activeColor: AppColors.primaryColorLight,
                          checkColor: Colors.white,
                          title: const Text(
                              "By ticking, you agree to Andorra360 Terms & Conditions and Privacy policy"),
                          value: ischecked,
                          onChanged: (value) {
                            setState(() {
                              ischecked = value!;
                            });
                          }),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                AppButton(
                  title: 'Sign up'.trim(),
                  horizontalPadding: 0,
                  height: 52,
                  color: AppColors.primaryColorLight,
                  loading: false,
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
