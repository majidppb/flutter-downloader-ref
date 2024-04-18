import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../pages/completed/completed.dart';
import '../../pages/downloads/downloads.dart';
import '../../pages/navbar/navbar.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _downloadsNavigatorKey = GlobalKey<NavigatorState>();
final _completedNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: DownloadsPage.path,
  routes: [
    StatefulShellRoute.indexedStack(
      parentNavigatorKey: _rootNavigatorKey,
      branches: [
        StatefulShellBranch(
          navigatorKey: _downloadsNavigatorKey,
          initialLocation: DownloadsPage.path,
          routes: [
            GoRoute(
              path: DownloadsPage.path,
              pageBuilder: (context, GoRouterState state) =>
                  _getPage(state, const DownloadsPage()),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _completedNavigatorKey,
          initialLocation: CompletedPage.path,
          routes: [
            GoRoute(
              path: CompletedPage.path,
              pageBuilder: (context, GoRouterState state) =>
                  _getPage(state, const CompletedPage()),
            ),
          ],
        ),
      ],
      pageBuilder: (
        BuildContext context,
        GoRouterState state,
        StatefulNavigationShell navigationShell,
      ) =>
          _getPage(
        state,
        NavBarPage(child: navigationShell),
      ),
    ),
  ],
);

MaterialPage _getPage(state, child) => MaterialPage(
      key: state.pageKey,
      child: child,
    );
