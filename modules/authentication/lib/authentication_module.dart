import 'package:authentication/presentation/sign_in/sign_in_email_page.dart';
import 'package:authentication/presentation/sign_in/sign_in_password_page.dart';
import 'package:authentication/presentation/signup/signup_page.dart';
import 'package:core/cache/caching_keys.dart';
import 'package:dependencies/dependencies.dart';

class AuthenticationModule extends Module {
  @override
  final List<Bind> binds = [];
  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const SignInPage()),
    ChildRoute(NavigatorKeys.LOGIN_PAGE_PASSWORD,
        child: (_, args) => const SignInPasswordPage()),
    ChildRoute(NavigatorKeys.SIGN_UP, child: (_, args) => const SignUpPage()),
  ];
}
