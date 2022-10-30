
import 'package:app_social_network_publications/ui/my_light_theme.dart';
import 'package:app_social_network_publications/ui/pages/publication/widgets/post_to_comment.dart';
import 'package:app_social_network_publications/ui/widgets/my_app_bar.dart';
import 'package:flutter/material.dart';

class CommentPage extends StatelessWidget {
  const CommentPage({super.key});

  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

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
              itemCount: 10,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const CircleAvatar(
                    backgroundColor: MyLightTheme.itemsGrey,
                    backgroundImage: NetworkImage('https://www.dzoom.org.es/wp-content/uploads/2020/02/portada-foto-perfil-redes-sociales-consejos.jpg'),
                  ),
                  title: Padding(
                    padding: EdgeInsets.only( top: height*0.004,  bottom: height*0.004 ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('Angela', style: TextStyle(
                          fontSize: height*0.02,
                          fontWeight: FontWeight.bold,
                          color: MyLightTheme.textCommentBlack,
                        ),),
                        Padding(
                          padding: EdgeInsets.only( left: width*0.02, bottom: height*0.001 ),
                          child: Text('2h', style: TextStyle(
                          fontSize: height*0.013,
                          color: MyLightTheme.textTransparentGrey,
                        ),),
                        ),
                      ],
                    ),
                  ),
                  subtitle: Text('I added a new designoption, what do you think of this?'),
                );
              },
            ),
          ),

          const PostToComment()
        ],
      ),
    );
  }
}