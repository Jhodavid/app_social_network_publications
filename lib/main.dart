import 'package:app_social_network_publications/ui/my_app_routes.dart';
import 'package:app_social_network_publications/ui/my_light_theme.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';


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
      routerDelegate: goRoute.routerDelegate,
      routeInformationParser: goRoute.routeInformationParser,
      routeInformationProvider: goRoute.routeInformationProvider,
      theme: MyLightTheme.lightTheme
    );
  } 
}
