import 'package:art_core/theme/app_colors.dart';
import 'package:art_core/theme/text_styles.dart';
import 'package:art_core/widgets/buttons/app_button.dart';
import 'package:art_core/widgets/text_fields.dart';
import 'package:core/cache/caching_keys.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';

class SignInPasswordPage extends StatelessWidget {
  const SignInPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
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
        backgroundColor: const Color(0xffEDEDED),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          shrinkWrap: true,
          children: [
            const SizedBox(
              height: 46,
            ),
            Padding(
              // to be edited ***********
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: SizedBox(
                  child: Image(
                      height: height / 7,
                      image: const AssetImage(
                        'assets/1.png',
                      ))),
            ),
            const SizedBox(
              height: 42,
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                "Sign to your account",
                style: TextStyles.SemiBold16,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                "email.gmail.com",
                style: TextStyles.Regular16,
              ),
            ),
            const SizedBox(
              height: 42,
            ),
            const Text(
              "Password",
              style: TextStyles.Medium14,
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              height: 48,
              child: AppTextField(
                onChanged: (text) {
                  //    signInBloc.add(UpdateMail(text));
                },
                borderColor: AppColors.bordercolor,
                errorText: null,
                textInputType: TextInputType.emailAddress,
                hint: 'password'.trim(),
                isRequired: true,
                //   isPassword: true,
                prefixIcon: const Icon(
                  Icons.email_outlined,
                  size: 18,
                  color: AppColors.bordercolor,
                ),
              ),
            ),
            const SizedBox(
              height: 9,
            ),
            GestureDetector(
              onTap: () {
                Modular.to.pushNamed(NavigatorKeys.SIGN_UP);
              },
              child: Text(
                "Forgot your password?",
                style:
                    TextStyles.light12.copyWith(color: const Color(0xff0866FF)),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            AppButton(
              title: 'Log in'.trim(),
              horizontalPadding: 0,
              //   dark: true,
              height: 52,
              color: AppColors.primaryColorLight,
              loading: false,
              onTap: () {
                Modular.to.pushNamed(NavigatorKeys.MAIN_PAGE);
              },
            ),
          ],
        ),
      ),
    );
  }
}
