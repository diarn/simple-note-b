import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_note/pages/add_note_page.dart';
import 'package:simple_note/pages/home_page.dart';

class AppRoutes {
  static String home = "home";
  static String addNote = 'add-note';

  static Page homePageBuilder(
    BuildContext context,
    GoRouterState state,
  ) {
    return const MaterialPage(
      child: HomePage(),
    );
  }

  static Page addNotePageBuilder(
    BuildContext context,
    GoRouterState state,
  ) {
    return const MaterialPage(
      child: AddNotePage(),
    );
  }

  final GoRouter goRouter = GoRouter(
    initialLocation: "/",
    routes: [
      GoRoute(
        name: home,
        path: "/",
        pageBuilder: homePageBuilder,
        routes: [
          GoRoute(
            name: addNote,
            path: 'add-note',
            pageBuilder: addNotePageBuilder,
          ),
        ],
      ),
    ],
  );
}
