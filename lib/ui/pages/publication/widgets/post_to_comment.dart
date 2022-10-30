
import 'package:app_social_network_publications/data/services/date_service.dart';
import 'package:app_social_network_publications/domain/entities/comment_model.dart';
import 'package:app_social_network_publications/domain/entities/form_model.dart';
import 'package:app_social_network_publications/domain/providers/comment_provider.dart';
import 'package:app_social_network_publications/domain/providers/form_provider.dart';
import 'package:app_social_network_publications/ui/my_light_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PostToComment extends ConsumerWidget {
  const PostToComment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    DateService dateService = DateService();

    FormModel formState = ref.watch(formProvider);

    return Padding(
      padding: EdgeInsets.only( left: width*0.08, right: width*0.03, top: height*0.01 ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: const InputDecoration(
                hintStyle: TextStyle(
                  color: MyLightTheme.itemsGrey
                ),
                hintText: 'Leave a commemt. Use @ to mention'
              ),
              onChanged: (value) {
                ref.read(formProvider.notifier).setForm(
                  FormModel(
                    text: value, 
                    isValidComment: value.isNotEmpty ? true : false
                  )
                );
              },
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: formState.isValidComment ? MyLightTheme.btnYellow : MyLightTheme.itemsGrey,
              shape: const CircleBorder()
            ),
            child: const Icon( Icons.send, color: Colors.white ),
            onPressed: () {

              if( !formState.isValidComment ) {
                return;
              }

              ref.read(commentProvider.notifier).addComment(
                Comment(
                  user: 'Angela', 
                  photoUrl: 'https://www.dzoom.org.es/wp-content/uploads/2020/02/portada-foto-perfil-redes-sociales-consejos.jpg', 
                  comment: formState.text,
                  date: dateService.getFullDate()
                )
              );
            }, 
          ),
        ],
      )
    );
  }
}