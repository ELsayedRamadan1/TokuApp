import 'package:go_router/go_router.dart';
import 'package:toku2_app/features/Colors/presentation/views/colors_view.dart';
import 'package:toku2_app/features/Numbers/presentation/views/numbers_view.dart';
import 'package:toku2_app/features/family/presentation/views/family_members_view.dart';
import 'package:toku2_app/features/home/presentation/views/home_view.dart';
import 'package:toku2_app/features/phrases/presentation/views/phrases_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kFamilyMemberView = '/familyMemberView';
  static const kColorsView = '/colorsView';
  static const kNumbersView = '/numbersView';
  static const kPhrasesView = '/phrasesView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: kFamilyMemberView,
        builder: (context, state) {
          return const FamilyMembersView();
        },
      ),
      GoRoute(
        path: kColorsView,
        builder: (context, state) {
          return const ColorsView();
        },
      ),
      GoRoute(
        path: kNumbersView,
        builder: (context, state) {
          return const NumberView();
        },
      ),
      GoRoute(
        path: kPhrasesView,
        builder: (context, state) {
          return const PhrasesView();
        },
      ),
    ],
  );
}
