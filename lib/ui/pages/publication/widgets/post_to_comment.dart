
import 'package:app_social_network_publications/ui/my_light_theme.dart';
import 'package:flutter/material.dart';

class PostToComment extends StatelessWidget {
  const PostToComment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.only( left: width*0.08, right: width*0.03, top: height*0.01 ),
      child: Row(
        children: [
          const Expanded(
            child: TextField(
              // style: TextFormSt,
            ),
          ),
          TextButton(
            onPressed: () {}, 
            style: TextButton.styleFrom(
              backgroundColor: MyLightTheme.itemsGrey,
              shape: const CircleBorder()
            ),
            child: const Icon( Icons.send, color: Colors.white ),
          ),
        ],
      )
    );
  }
}