import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../main.dart';
import 'left_column/height20.dart';
import 'left_column/personal_avatar.dart';
import 'left_column/skill_info.dart';
import 'left_column/sobreMim.dart';

class LeftColumn extends StatelessWidget {
  final SizingInformation sizingInformation;

  LeftColumn(this.sizingInformation);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 3 * 1,
      color: primaryColor,
      child: Column(
        children: [
          PersonalAvatar(),
          Height20(),
          SobreMim(sizingInformation: sizingInformation),
          Height20(),
          SkillInfo(sizingInformation: sizingInformation),
        ],
      ),
    );
  }
}
