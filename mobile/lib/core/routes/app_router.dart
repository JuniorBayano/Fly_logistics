import 'package:fly_logistics/features/fly_logistics_app.dart';
import 'package:go_router/go_router.dart';
import 'app_route.dart';


final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      path: AppRoutes.splash,
      builder: (context, state) => const FlyLogisticsApp(),
    ),
  ],
);