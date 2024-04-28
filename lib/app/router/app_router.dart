import 'package:flutter_playground/modules/auth/view/auth_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const AuthView(),
      ),
    ],
  );
}
