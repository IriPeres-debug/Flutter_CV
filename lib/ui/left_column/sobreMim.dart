import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_cv/main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SobreMim extends StatelessWidget {
  const SobreMim({
    Key? key,
    required this.sizingInformation,
  }) : super(key: key);

  final SizingInformation sizingInformation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        children: [
          FittedBox(
            fit: BoxFit.fitWidth,
            child: Row(
              children: [
                Text(
                  'sobre mim'.toUpperCase(),
                  style: GoogleFonts.montserrat(
                      fontSize: 50,
                      color: sizingInformation.deviceScreenType ==
                              DeviceScreenType.desktop
                          ? Colors.white
                          : Colors.black,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
          Text(
            'Aluno de Sistemas de Informação no Centro Universitário de Patos de Minas. Iniciando no mundo da programação e também no mercado  de trabalho. Atualmente trabalhando como Técnico de Desenvovlvimento de Sistemas também no Centro Universitário de Patos de Minas.',
            textAlign:
                sizingInformation.deviceScreenType == DeviceScreenType.mobile
                    ? TextAlign.justify
                    : TextAlign.left,
            style: GoogleFonts.montserrat(
                fontSize: 20,
                color: sizingInformation.deviceScreenType ==
                        DeviceScreenType.desktop
                    ? Colors.white
                    : primaryColor,
                fontWeight: FontWeight.w100),
          )
        ],
      ),
    );
  }
}
