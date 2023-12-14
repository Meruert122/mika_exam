import 'package:blog_post/domain/entity/blog_model.dart';
import 'package:blog_post/presentation/screen/auth/auth_screen.dart';
import 'package:blog_post/presentation/screen/home/home_screen.dart';
import 'package:blog_post/presentation/screen/news_page/news_page_screen.dart';
import 'package:blog_post/presentation/screen/otp/otp_screen.dart';
import 'package:go_router/go_router.dart';

import 'app_routes.dart';

class AppRouter {
  static final _router = GoRouter(routes: _routes);

  static GoRouter get router => _router;

  static final _routes = <GoRoute>[
    GoRoute(
      path: AppRoutes.home.path,
      builder: (_, __) => HomeScreen(),
    ),
    GoRoute(
      path: AppRoutes.auth.path,
      builder: (_, __) => AuthScreen(),
    ),
    GoRoute(
      path: AppRoutes.otp.path,
      builder: (_, state) => OtpScreen(phone: state.extra as String),
    ),
    GoRoute(
      path: AppRoutes.news.path,
      builder: (_, state) => BlogPageScreen(
        blogModel: state.extra as BlogModel,
      ),
    ),
  ];
}
