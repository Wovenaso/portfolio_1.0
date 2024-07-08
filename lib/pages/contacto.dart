import 'package:flutter/material.dart';
import 'dart:js' as js;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/config/theme.dart';

class contactoPage extends StatefulWidget {
  const contactoPage({super.key});

  @override
  State<contactoPage> createState() => _contactoPageState();
}

class _contactoPageState extends State<contactoPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        SizedBox(
          width: 250,
          height: 250,
          child: TextButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<CircleBorder>(const CircleBorder()),
              overlayColor:
                MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
              return CustomColors.bottomNavBaraActivePage;
            })),
            onPressed: () {
              js.context.callMethod("open", ["https://www.linkedin.com/in/carlos-daniel-santillan-contreras-963019247/"]);
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(FontAwesomeIcons.linkedin,
                    size: 100, color: Colors.blueAccent[600]),
                const SizedBox(height: 20,),
                Text("LinkedIn", style: CustomFonts.titulosEstilo),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 250,
          height: 250,
          child: TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              shape: MaterialStateProperty.all<CircleBorder>(const CircleBorder()),
              overlayColor:
                MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
              return CustomColors.bottomNavBaraActivePage;
            })),
            onPressed: () {
              js.context.callMethod("open", ["https://github.com/Wovenaso"]);
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const FaIcon(FontAwesomeIcons.github,
                    size: 100, color: Colors.white),
                const SizedBox(height: 20,),
                Text("GitHub", style: CustomFonts.titulosEstilo),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 250,
          height: 250,
          child: TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.amberAccent),
              shape: MaterialStateProperty.all<CircleBorder>(const CircleBorder()),
              overlayColor:
                MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
              return CustomColors.bottomNavBaraActivePage;
            })),
            onPressed: () {
              js.context.callMethod(
                    "open", ["https://drive.google.com/drive/folders/1flMLbOo7ZtI4L-AxgXp8_OdRgsyuJuv1?usp=drive_link"]);
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const FaIcon(FontAwesomeIcons.googleDrive,
                    size: 100, color: Colors.amberAccent),
                const SizedBox(height: 20,),
                Text("Certificados", style: CustomFonts.titulosEstilo),
              ],
            ),
          ),
        ),
        ],
      )),
    );
  }
}
