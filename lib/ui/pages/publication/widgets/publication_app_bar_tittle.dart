
import 'package:app_social_network_publications/ui/my_light_theme.dart';
import 'package:flutter/material.dart';

class PublicationAppBarTittle extends StatelessWidget {
  const PublicationAppBarTittle({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: height*0.035,
          child: const CircleAvatar(
            backgroundColor: MyLightTheme.itemsGrey,
            backgroundImage: NetworkImage('https://www.dzoom.org.es/wp-content/uploads/2020/02/portada-foto-perfil-redes-sociales-consejos.jpg'),
          ),
        ),
        Text('Angela', style: TextStyle(
          color: MyLightTheme.itemsGrey,
          fontSize: height*0.02
        ),)
      ]
    );
  }
}
