
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:app_social_network_publications/ui/pages/comment/widgets/comment_card.dart';
import 'package:app_social_network_publications/ui/pages/publication/widgets/post_to_comment.dart';
import 'package:app_social_network_publications/ui/widgets/my_app_bar.dart';

import 'package:app_social_network_publications/domain/entities/comment_model.dart';
import 'package:app_social_network_publications/domain/providers/comment_provider.dart';

import 'package:app_social_network_publications/ui/my_light_theme.dart';


class CommentPage extends ConsumerWidget {
  const CommentPage({super.key});

  @override
  Widget build( BuildContext context, WidgetRef ref ) {

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    List<Comment> comments = ref.watch(commentProvider);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size( double.infinity, height*0.065),
        child: MyAppBar(
          title: Text('Comments', style: TextStyle(
            color: MyLightTheme.itemsGrey,
            fontSize: height*0.02
          ),),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              separatorBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric( horizontal: width*0.03 ),
                  child: const Divider(),
                );
              },
              itemCount: comments.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return CommentCard( comment: comments[index] );
              },
            ),
          ),

          const PostToComment()
        ],
      ),
    );
  }
}
