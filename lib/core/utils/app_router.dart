import 'package:bookly_app/features/home/presentation/view/home_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash/presentation/view/splash_view.dart';

abstract class AppRouter {
  static const rSplashView = '/';
  static const rHomeView = '/homeView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: rSplashView,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: rHomeView,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
