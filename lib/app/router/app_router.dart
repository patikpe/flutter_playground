import 'package:flutter_playground/modules/home/view/home_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeView(),
      ),
      // GoRoute(
      //   path: '/login',
      //   builder: (context, state) => LoginView(),
      // ),
      // GoRoute(
      //   path: '/register',
      //   builder: (context, state) => RegisterView(),
      // ),
    ],
  );
}
