import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_cv/main.dart';
import 'package:flutter_application_cv/ui/right_column/title_description_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ContentWidget extends StatelessWidget {
  const ContentWidget({
    Key? key,
    required this.contentTitle,
    required this.sizingInformation,
  }) : super(key: key);

  final SizingInformation sizingInformation;
  final String contentTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 50),
          padding:
              sizingInformation.deviceScreenType != DeviceScreenType.desktop
                  ? const EdgeInsets.symmetric(horizontal: 16)
                  : const EdgeInsets.all(0),
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      contentTitle.toUpperCase(),
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w400,
                          fontSize: 50,
                          color: Colors.black87),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        TitleDescriptionWidget(
            title: 'Título (2010 - 2020)',
            description:
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
            sizingInformation: sizingInformation),
        TitleDescriptionWidget(
            title: 'Título (2010 - 2020)',
            description:
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
            sizingInformation: sizingInformation),
        TitleDescriptionWidget(
            title: 'Título (2010 - 2020)',
            description:
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
            sizingInformation: sizingInformation)
      ],
    );
  }
}
