import 'package:flutter/cupertino.dart';

class PersonalAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/avatar.jpg',
      fit: BoxFit.cover,
    );
  }
}
