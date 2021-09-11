import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_cv/main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'right_column/content_title_widget.dart';
import 'right_column/name_widget.dart';
import 'right_column/personal_info.dart';

class RightColumn extends StatelessWidget {
  final SizingInformation sizingInformation;

  RightColumn(this.sizingInformation);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Container(
          margin: const EdgeInsets.only(top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [NameWidget(), PersonalInfo()],
              ),
              ContentWidget(
                  contentTitle: 'Experiência',
                  sizingInformation: sizingInformation),
              ContentWidget(
                  contentTitle: 'Educação',
                  sizingInformation: sizingInformation)
            ],
          ),
        ),
      ),
    );
  }
}
