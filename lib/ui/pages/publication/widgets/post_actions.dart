

import 'package:app_social_network_publications/ui/my_light_theme.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PostActions extends StatelessWidget {
  const PostActions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.symmetric( horizontal: width*0.04 ),
      child: Row(
        children: [
          SizedBox(
            width: width*0.11,
            child: TextButton(
              child: Icon( Icons.edit, color: MyLightTheme.iconsGrey, size: height*0.03, ),
              onPressed: () {},
            ),
          ),
          SizedBox(
            width: width*0.11,
            child: TextButton(
              child: Badge(
                child: Icon( Icons.subtitles_rounded, color: MyLightTheme.iconsGrey, size: height*0.03, ),
              ),
              onPressed: () {
                context.go('/comments_page');
              },
            ),
          ),
          Expanded( child: Container() ),
          SizedBox(
            width: width*0.11,
            child: TextButton(
              child: Icon( Icons.share_rounded, color: MyLightTheme.iconsGrey, size: height*0.03, ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
