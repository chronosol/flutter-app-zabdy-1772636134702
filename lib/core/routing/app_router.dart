import 'package:go_router/go_router.dart';
import '../../features/game/presentation/screens/game_screen.dart';

final GoRouter goRouter = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: '/game',
      builder: (context, state) => const GameScreen(),
    ),
    GoRoute(
      path: '/',
      redirect: (_, __) => '/game',
    ),
  ],
);
