import 'package:account/account_module.dart';
import 'package:dependencies/dependencies.dart';
import 'package:home/home_module.dart';
import 'package:main_home/presentation/bottom_nav_bar/bottom_nav_bloc.dart';
import 'package:main_home/presentation/bottom_nav_bar/bottom_nav_page.dart';
import 'package:my_unit/my_unit_module.dart';
import 'package:notification/notification_module.dart';

class MainPageModule extends Module {
  @override
  final List<Bind> binds = [
    ...MyUnitModule().binds,
    ...NotificationModule().binds,
    ...AccountModule().binds,
    ...HomeModule().binds,
    Bind.lazySingleton((i) => BottomNavBloc()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const BottomNavPage()),
  ];
}
