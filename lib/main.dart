import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:app_social_network_publications/ui/pages/comment/comment_page.dart';
import 'package:app_social_network_publications/ui/pages/publication/publication_page.dart';


void main() {

  return runApp(
    const ProviderScope( 
      child: MyApp() 
    )
  );
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: App(),
    );
  }
}

class App extends ConsumerWidget {
  App({super.key});

  @override
  Widget build( BuildContext context, WidgetRef ref ) {

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: _goRoute.routerDelegate,
      routeInformationParser: _goRoute.routeInformationParser,
      routeInformationProvider: _goRoute.routeInformationProvider,
      // theme: _isDarkTheme ? ThemeData.dark() : ThemeData.light()
    );
  } 

  final GoRouter _goRoute = GoRouter(
    routes: <GoRoute>[
      // GoRoute(
      //   routes:  <GoRoute>[
      //     GoRoute(
      //       path: 'comments_page',
      //       builder: ( BuildContext context, GoRouterState state ) => const CommentPage()
      //     ),
      //   ], path: '/',
      //   builder: ( BuildContext context, GoRouterState state ) => const PublicationPage(),
      // )
      GoRoute(
        routes:  <GoRoute>[
          GoRoute(
            path: 'comments_page',
            builder: ( BuildContext context, GoRouterState state ) => const CommentPage()
          ),
        ], path: '/',
        builder: ( BuildContext context, GoRouterState state ) => const CommentPage(),
      )
    ]
  );
}
