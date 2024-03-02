import 'package:flutter/material.dart';
import 'package:inst_ui/components/instarow.dart';
import 'package:inst_ui/components/posts.dart';
import 'package:inst_ui/components/user_story.dart';

class InstagramFeed extends StatefulWidget {
  const InstagramFeed({super.key});

  @override
  State<InstagramFeed> createState() => _InstagramFeedState();
}

class _InstagramFeedState extends State<InstagramFeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.zero,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
              child: WidgetInstaRow(),
            ),
            Expanded(
                child: ListView(
              padding: EdgeInsets.zero,
              children: [
                UserStory(),
                SizedBox(height: 10),
                aCompletePostSection(
                  username: 'almousleck',
                  thumbnail: 'assets/icons/almousleck.jpg',
                  postImage: 'assets/icons/groud.jpg',
                ),
                aCompletePostSection(
                  username: 'james',
                  thumbnail: 'assets/icons/james.jpg',
                  postImage: 'assets/icons/james.jpg',
                ),
                aCompletePostSection(
                  username: 'Mamadou',
                  thumbnail: 'assets/icons/mama.jpg',
                  postImage: 'assets/icons/mama.jpg',
                ),
                aCompletePostSection(
                  username: 'Frank',
                  thumbnail: 'assets/icons/frank.jpg',
                  postImage: 'assets/icons/frank.jpg',
                ),
                aCompletePostSection(
                  username: 'Benji',
                  thumbnail: 'assets/icons/benji.jpg',
                  postImage: 'assets/icons/benji2.jpg',
                ),
                aCompletePostSection(
                  username: 'Kunshe',
                  thumbnail: 'assets/icons/kum.jpg',
                  postImage: 'assets/icons/kum.jpg',
                ),
                aCompletePostSection(
                  username: 'Ousmane',
                  thumbnail: 'assets/icons/ousmane.jpg',
                  postImage: 'assets/icons/ousmane.jpg',
                ),
                aCompletePostSection(
                  username: 'Philip',
                  thumbnail: 'assets/icons/philip.jpg',
                  postImage: 'assets/icons/philip.jpg',
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
