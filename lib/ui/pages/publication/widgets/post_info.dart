
import 'package:app_social_network_publications/ui/my_light_theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PostInfo extends StatelessWidget {
  const PostInfo({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.symmetric( horizontal: width*0.075 ),
      child: Row(
        children: [
          const Text('2hrs ago', style:  TextStyle(
            color: MyLightTheme.textTransparentGrey
          ),),
          Padding(
            padding: EdgeInsets.symmetric( horizontal: width*0.03 ),
            child: Icon( Icons.circle, 
              color: MyLightTheme.itemsGrey, size: height*0.004, ),
          ),
          GestureDetector(
            child: const Text('View All Comments', style:  TextStyle(
              color: MyLightTheme.textTransparentGrey
            ),),
            onTap: () {
              context.go('/comments_page');
            },
          )
        ],
      ),
    );
  }
}
