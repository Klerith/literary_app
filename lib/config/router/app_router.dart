

import 'package:go_router/go_router.dart';
import 'package:literary_app/presentation/screens/books/home_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
  ]
);