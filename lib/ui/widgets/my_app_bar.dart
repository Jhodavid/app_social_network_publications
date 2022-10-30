import 'package:app_social_network_publications/ui/my_light_theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyAppBar extends StatelessWidget {

  final Widget title;
  final TextButton? rightButton;

  const MyAppBar({
    Key? key, 
    required this.title, 
    this.rightButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height;

    List<Widget> actions = [];
    if( rightButton != null ) {
      actions.add(rightButton!);
    }

    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: TextButton(
          child: Icon( Icons.arrow_back_ios_rounded, color: MyLightTheme.itemsGrey, size: height*0.03, ),
          onPressed: () {
            context.go('/');
          },
        ),
      title: title,
      centerTitle: true,
      actions: actions
    );
  }
}