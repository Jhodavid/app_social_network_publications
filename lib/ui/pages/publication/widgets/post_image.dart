
import 'package:flutter/material.dart';

class PostImage extends StatelessWidget {
  const PostImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.only( top: 0, left: width*0.04, right: width*0.04, bottom: width*0.02 ),
      child: FadeInImage(
        placeholder: const AssetImage('assets/no-image.jpg'), 
        image: const NetworkImage('https://images8.alphacoders.com/793/793752.jpg'),
        fit: BoxFit.cover,
        height: height*0.66,
      ),
    );
  }
}
