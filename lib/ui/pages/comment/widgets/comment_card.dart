
import 'package:app_social_network_publications/domain/entities/comment_model.dart';
import 'package:app_social_network_publications/ui/my_light_theme.dart';
import 'package:flutter/material.dart';

class CommentCard extends StatelessWidget {

  final Comment comment;

  const CommentCard({
    Key? key, 
    required this.comment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return ListTile(
      leading: CircleAvatar(
        backgroundColor: MyLightTheme.itemsGrey,
        backgroundImage: NetworkImage(comment.photoUrl),
      ),
      title: Padding(
        padding: EdgeInsets.only( top: height*0.004,  bottom: height*0.004 ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(comment.user, style: TextStyle(
              fontSize: height*0.02,
              fontWeight: FontWeight.bold,
              color: MyLightTheme.textCommentBlack,
            ),),
            Padding(
              padding: EdgeInsets.only( left: width*0.02, bottom: height*0.001 ),
              child: Text(comment.date, style: TextStyle(
              fontSize: height*0.013,
              color: MyLightTheme.textTransparentGrey,
            ),),
            ),
          ],
        ),
      ),
      subtitle: Text(comment.comment),
    );
  }
}