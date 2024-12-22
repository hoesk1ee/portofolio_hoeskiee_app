import 'package:go_router/go_router.dart';
import 'package:portofolio_hoeskiee_app/about_page.dart';
import 'package:portofolio_hoeskiee_app/main_page.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const MainPage(),
    ),
    GoRoute(
      path: '/about',
      builder: (context, state) => const AboutPage(),
    ),
    // GoRoute(
    //   path: '/contact',
    //   builder: (context, state) => const ContactPage(),
    // ),
    // GoRoute(
    //   path: '/experience',
    //   builder: (context, state) => const ExperiencePage(),
    // ),
  ],
);
