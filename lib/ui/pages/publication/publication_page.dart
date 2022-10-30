import 'package:flutter/material.dart';

import 'package:app_social_network_publications/ui/pages/publication/widgets/publication_app_bar_tittle.dart';
import 'package:app_social_network_publications/ui/pages/publication/widgets/post_actions.dart';
import 'package:app_social_network_publications/ui/pages/publication/widgets/post_image.dart';
import 'package:app_social_network_publications/ui/pages/publication/widgets/post_info.dart';
import 'package:app_social_network_publications/ui/pages/publication/widgets/post_to_comment.dart';
import 'package:app_social_network_publications/ui/widgets/my_app_bar.dart';

import 'package:app_social_network_publications/ui/my_light_theme.dart';


class PublicationPage extends StatelessWidget {
  const PublicationPage({super.key});

  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size( double.infinity, height*0.065),
        child: MyAppBar(
          title: PublicationAppBarTittle(height: height),
          rightButton: TextButton(
            child: Icon( Icons.more_horiz_rounded, color: MyLightTheme.itemsGrey, size: height*0.03, ),
            onPressed: () {},
          ),
        )
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const PostImage(),
            const PostActions(),
            const PostInfo(),
      
            Padding(
              padding: EdgeInsets.symmetric( horizontal: width*0.03, vertical: height*0.01 ),
              child: Divider(
                thickness: height*0.001,
              ),
            ),
      
            const PostToComment(),
          ]
        ),
      ),
    );
  }
}

