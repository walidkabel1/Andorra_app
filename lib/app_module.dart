import 'package:account/account_module.dart';
import 'package:authentication/authentication_module.dart';
import 'package:core/cache/caching_keys.dart';
import 'package:dependencies/dependencies.dart';
import 'package:home/home_module.dart';
import 'package:main_home/main_page_module.dart';
import 'package:my_unit/my_unit_module.dart';
import 'package:notification/notification_module.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [
        AuthenticationModule(),
        NotificationModule(),
        AccountModule(),
        MyUnitModule()
      ];
  @override
  @override
  final List<ModularRoute> routes = [
    ModuleRoute(
      '/',
      module: AuthenticationModule(),
    ),
    ModuleRoute(NavigatorKeys.NOTIFICATIONS_KEY, module: NotificationModule()),
    ModuleRoute(NavigatorKeys.ACCOUNT_KEY, module: AccountModule()),
    ModuleRoute(NavigatorKeys.MY_UNIT_PAGE, module: MyUnitModule()),
    ModuleRoute(NavigatorKeys.MAIN_PAGE, module: MainPageModule()),
    ModuleRoute(NavigatorKeys.HomePage, module: HomeModule()),
  ];
}
