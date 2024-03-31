import 'package:core/cache/caching_keys.dart';
import 'package:dependencies/dependencies.dart';
import 'package:home/presentation/home_page.dart';
import 'package:home/presentation/home_page_bloc.dart';
import 'package:home/presentation/pages/event_item_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomePageNavBloc()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const HomePage()),
    ChildRoute(NavigatorKeys.EVENT_PAGE,
        child: (_, args) => const EventItemPage()),
  ];
}
