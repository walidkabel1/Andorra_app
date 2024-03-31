import 'package:account/presentation/account_page.dart';
import 'package:art_core/theme/app_colors.dart';
import 'package:art_core/theme/text_styles.dart';
import 'package:core/cache/caching_keys.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home/presentation/home_page.dart';
import 'package:main_home/presentation/bottom_nav_bar/bottom_nav_bloc.dart';
import 'package:main_home/presentation/bottom_nav_bar/bottom_nav_event.dart';
import 'package:main_home/presentation/bottom_nav_bar/bottom_nav_state.dart';
import 'package:my_unit/presentation/my_unit_page.dart';
import 'package:notification/presentation/notification_page.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key});

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  final bottomNavBloc = Modular.get<BottomNavBloc>();
  @override
  Widget build(BuildContext context) {
    List<Widget> pages = <Widget>[
      const HomePage(),
      const MyUnitPage(),
      const NotificationPage(),
      const AccountPage(),
    ];
    return BlocBuilder<BottomNavBloc, BottomNavState>(
      bloc: bottomNavBloc,
      builder: (context, state) {
        return PopScope(
          onPopInvoked: (value) async {
            if (bottomNavBloc.index.value != 0) {
              bottomNavBloc.add(ChangeIndexEvent(0));
              return Future.value(false);
            } else {
              final bool exit = await showDialog(
                    context: context,
                    builder: (BuildContext context) => CupertinoAlertDialog(
                      title: Text('close_app'.trim()),
                      content: Text("are_you_sure".trim()),
                      actions: <Widget>[
                        CupertinoDialogAction(
                          isDefaultAction: true,
                          child: Text('cancel'.trim()),
                          onPressed: () => Modular.to.pop(false),
                        ),
                        CupertinoDialogAction(
                          child: Text("yes".trim()),
                          onPressed: () => Modular.to.pop(true),
                        ),
                      ],
                    ),
                  ) ??
                  false;

              return Future.value(exit);
            }
          },
          child: MediaQuery(
            data: MediaQuery.of(context).removePadding(removeBottom: true),
            child: Scaffold(
                floatingActionButtonLocation:
                    FloatingActionButtonLocation.centerDocked,
                floatingActionButton: FloatingActionButton(
                  backgroundColor: AppColors.primaryColorLight,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(80))),
                  onPressed: () {},
                  child: SvgPicture.asset(
                    "assets/add_icon.svg",
                  ),
                ),
                //    extendBody: true,
                body: pages[bottomNavBloc.index.value],
                bottomNavigationBar: BottomAppBar(
                  shape: const CircularNotchedRectangle(),
                  child: CustomBottomNavBar(bottomNavBloc: bottomNavBloc),
                )),
          ),
        );
      },
    );
  }
}

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
    required this.bottomNavBloc,
  });

  final BottomNavBloc bottomNavBloc;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(0), topRight: Radius.circular(0)),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: bottomNavBloc.index.value,
          backgroundColor: const Color(0xfff7f5f7),
          unselectedLabelStyle: TextStyles.Regular10,
          selectedLabelStyle:
              TextStyles.Regular10.copyWith(color: AppColors.primaryColorLight),
          onTap: (index) {
            bottomNavBloc.add(ChangeIndexEvent(index));
            Modular.to.pushNamed('${NavigatorKeys.HomePage}/');
          },
          items: [
            BottomNavigationBarItem(
              label: '',
              icon: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/home.svg',
                      color: AppColors.assetscolor),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    "home".trim(),
                    style: TextStyles.Regular10,
                  ),
                ],
              ),
              activeIcon: SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/home.svg',
                        color: AppColors.primaryColorLight),
                    const SizedBox(width: 8),
                    Text(
                      'home',
                      style: TextStyles.Regular10.copyWith(
                          color: AppColors.primaryColorLight),
                    )
                  ],
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/MyUnit.svg',
                        color: AppColors.assetscolor),
                    const SizedBox(
                      width: 8,
                    ),
                    const Text(
                      "My Unit",
                      style: TextStyles.Regular10,
                    ),
                  ],
                ),
              ),
              activeIcon: SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/MyUnit.svg',
                        color: AppColors.primaryColorLight),
                    const SizedBox(width: 8),
                    Text(
                      'My Unit',
                      style: TextStyles.Regular10.copyWith(
                          color: AppColors.primaryColorLight),
                    )
                  ],
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/Notifications.svg',
                        color: AppColors.assetscolor),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Notifications".trim(),
                      style: TextStyles.Regular10,
                    ),
                  ],
                ),
              ),
              activeIcon: SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/Notifications.svg',
                        color: AppColors.primaryColorLight),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Notifications',
                      style: TextStyles.Regular10.copyWith(
                          color: AppColors.primaryColorLight),
                    )
                  ],
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/Account.svg',
                        color: AppColors.assetscolor),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Account".trim(),
                      style: TextStyles.Regular10,
                    ),
                  ],
                ),
              ),
              activeIcon: SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/Account.svg',
                        color: AppColors.primaryColorLight),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Account',
                      style: TextStyles.Regular10.copyWith(
                          color: AppColors.primaryColorLight),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
