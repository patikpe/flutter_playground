import 'package:flutter_playground/modules/setup/view/setup_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SetupView(),
      ),
    ],
  );
}
