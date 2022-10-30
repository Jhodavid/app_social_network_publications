
import 'package:flutter/material.dart';

import 'package:app_social_network_publications/ui/pages/comment/comment_page.dart';
import 'package:app_social_network_publications/ui/pages/publication/publication_page.dart';

import 'package:go_router/go_router.dart';


final GoRouter goRoute = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      routes:  <GoRoute>[
        GoRoute(
          path: 'comments_page',
          builder: ( BuildContext context, GoRouterState state ) => const CommentPage()
        ),
      ], path: '/',
      builder: ( BuildContext context, GoRouterState state ) => const PublicationPage(),
    )
  ]
);

