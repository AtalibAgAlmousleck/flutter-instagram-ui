import 'package:flutter/cupertino.dart';
import 'package:inst_ui/screens/messenger.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

class WidgetInstaRow extends StatelessWidget {
  const WidgetInstaRow({super.key});

  @override
  Widget build(BuildContext context) {
    const double size = 35;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          'assets/icons/instagram.png',
          fit: BoxFit.scaleDown,
          width: 120,
          height: size,
        ),
        Spacer(),
        Row(
          children: [
            Icon(
              CupertinoIcons.plus_app,
              size: 30,
            ),
            SizedBox(width: 8),
            GestureDetector(
              onTap: () => Get.to(Messenger()),
              child: Icon(
                CupertinoIcons.bolt_horizontal_circle,
                size: 30,
              ),
            ),
          ],
        )
      ],
    );
  }
}
