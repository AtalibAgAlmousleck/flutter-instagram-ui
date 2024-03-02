// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:inst_ui/components/networkImages.dart';
import 'package:inst_ui/model/entity_model.dart';

class UserStory extends StatelessWidget {
  const UserStory({super.key});

  @override
  Widget build(BuildContext context) {
    final List<EntityModel> users = [
      //assets/icons/ousmane.jpg
      EntityModel(name: 'Your story', icon: 'assets/icons/almousleck.jpg'),
      EntityModel(name: 'Your story', icon: 'assets/icons/ousmane.jpg'),
      EntityModel(name: 'mamadou', icon: 'assets/icons/mama.jpg'),
      EntityModel(name: 'benji', icon: 'assets/icons/benji.jpg'),
      EntityModel(name: 'kumhse', icon: 'assets/icons/kum.jpg'),
      EntityModel(name: 'frank', icon: 'assets/icons/frank.jpg'),
      EntityModel(name: 'novy', icon: 'assets/icons/nov.jpg'),
      EntityModel(name: 'philip', icon: 'assets/icons/philip.jpg'),
      EntityModel(name: 'james', icon: 'assets/icons/james.jpg'),
    ];
    return Container(
      height: 100,
      child: ListView.builder(
          itemCount: users.length,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.all(3.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  roundNetworkImageIcon(users[index].icon, 70.0),
                  Text(
                    users[index].name,
                    style: TextStyle(fontSize: 12.0),
                  )
                ],
              ),
            );
          }),
    );
  }
}
