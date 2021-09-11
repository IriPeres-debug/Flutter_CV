import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_cv/ui/left_column.dart';
import 'package:flutter_application_cv/ui/left_column/height20.dart';
import 'package:flutter_application_cv/ui/left_column/personal_avatar.dart';
import 'package:flutter_application_cv/ui/left_column/skill_info.dart';
import 'package:flutter_application_cv/ui/left_column/sobreMim.dart';
import 'package:flutter_application_cv/ui/right_column/content_title_widget.dart';
import 'package:flutter_application_cv/ui/right_column/name_widget.dart';
import 'package:flutter_application_cv/ui/right_column/personal_info.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'ui/right_column.dart';

final primaryColor = Colors.black;
final backgroundColor = Color(0xFFEDF1F4);

void main() {
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        child: ResponsiveBuilder(
          builder: (context, sizingInformation) {
            return sizingInformation.deviceScreenType ==
                    DeviceScreenType.desktop
                ? DesktopUI(
                    sizingInformation: sizingInformation,
                  )
                : Column(
                    children: [
                      PersonalAvatar(),
                      Height20(),
                      SobreMim(sizingInformation: sizingInformation),
                      Height20(),
                      SkillInfo(sizingInformation: sizingInformation),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [NameWidget(), PersonalInfo()],
                          ),
                          ContentWidget(
                              contentTitle: 'Experiencia',
                              sizingInformation: sizingInformation),
                          ContentWidget(
                              contentTitle: 'Educação',
                              sizingInformation: sizingInformation)
                        ],
                      )
                    ],
                  );
          },
        ),
      ),
    ));
  }
}

class DesktopUI extends StatelessWidget {
  const DesktopUI({Key? key, required this.sizingInformation})
      : super(key: key);

  final SizingInformation sizingInformation;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        color: backgroundColor,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LeftColumn(sizingInformation),
            RightColumn(sizingInformation)
          ],
        ),
      ),
    );
  }
}
