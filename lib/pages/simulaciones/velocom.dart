import 'package:flutter/material.dart';
import 'dart:js' as js;
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/config/theme.dart';

class velocom_simulation extends StatefulWidget {
  const velocom_simulation({super.key});

  @override
  State<velocom_simulation> createState() => _velocom_simulationState();
}

class _velocom_simulationState extends State<velocom_simulation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: _appBar(),
      body: _cuerpo(),
    );
  }

  ListView _cuerpo() {
    return ListView(children: [
      Container(
        padding: const EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "Back-end",
            style: CustomFonts.titulosEstilo,
            textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Esta aplicacion fue creada para la configuracion y monitoreo de los dispositivos de red HUAWEI.",
            style: CustomFonts.textoEstilo,
            textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
              "Se ultilizo Python para el back-end el cual consistia en un servidor web el cual funcionaba como un intermediario entre el dispositivo al cual se deseaba configurar o monitorear",
              style: CustomFonts.textoEstilo,
              textAlign: TextAlign.justify),
          const SizedBox(
            height: 20,
          ),
          Text("Para este servidor se utlizaron los siguiente paquetes",
              style: CustomFonts.textoEstilo, textAlign: TextAlign.justify),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: CustomColors.bgLight2,
            ),
            child: ListTile(
              leading: const Icon(Icons.circle),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Flask",
                    style: CustomFonts.subtitulosEstilo,
                  ),
                  Text("Modulo utilizado para el servidor web",
                      style: CustomFonts.textoEstilo,
                      textAlign: TextAlign.justify),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: CustomColors.bgLight2,
            ),
            child: ListTile(
              leading: const Icon(Icons.circle),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Netmiko",
                    style: CustomFonts.subtitulosEstilo,
                  ),
                  Text(
                      "Modulo utilizado para crear la comunicacion entre el servidor web y los dispositivos de red",
                      style: CustomFonts.textoEstilo,
                      textAlign: TextAlign.justify),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: CustomColors.bgLight2,
            ),
            child: ListTile(
              leading: const Icon(Icons.circle),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Telebot",
                    style: CustomFonts.subtitulosEstilo,
                  ),
                  Text(
                      "Modulo utilizado para mandar mensajes mediante Telegram para avisar movimientos o problemas en el sistema",
                      style: CustomFonts.textoEstilo,
                      textAlign: TextAlign.justify),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: CustomColors.bgLight2,
            ),
            child: ListTile(
              leading: const Icon(Icons.circle),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Filtro",
                    style: CustomFonts.subtitulosEstilo,
                  ),
                  Text(
                    "Modulo creado para el formateo de datos extraidos de los dispositivos de red",
                    style: CustomFonts.textoEstilo,
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
      const SizedBox(
        height: 30,
      ),
      Container(
        padding: const EdgeInsets.all(20),
        color: CustomColors.bgLight1,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "Front-end",
            style: CustomFonts.titulosEstilo,
            textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "El Front-end de esta apliacion fue hecho en el framework de Flutter, elegi este mismo por la versatilidad a la hora de compilar la aplicacion para las diferentes plataformas a las que se deseaba crear esta app",
            style: CustomFonts.textoEstilo,
            textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
              "Para el lenguaje de diseño se utlizaron la siguiente dependencia",
              style: CustomFonts.textoEstilo,
              textAlign: TextAlign.justify),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: CustomColors.bgLight2,
            ),
            child: ListTile(
              leading: const Icon(Icons.circle),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Fluent_ui",
                    style: CustomFonts.subtitulosEstilo,
                  ),
                  Text(
                      "Esta dependencia cambia el estilo de los widgets a un estilo parecido al de Windows 10",
                      style: CustomFonts.textoEstilo,
                      textAlign: TextAlign.justify),
                ],
              ),
            ),
          ),
        ]),
      ),
    ]);
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 0,
      title: RichText(
        text: TextSpan(children: [
          TextSpan(
              text: "Velocom",
              style: GoogleFonts.inter(
                  fontSize: 40,
                  fontWeight: FontWeight.w200,
                  color: Colors.white)),
          TextSpan(
              text: "App",
              style: GoogleFonts.inter(
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                  color: Colors.white))
        ]),
      ),
      actions: [
        IconButton(
            iconSize: 30,
            onPressed: () {
              setState(() {
                js.context.callMethod(
                    "open", ["https://github.com/Wovenaso/velocom_app"]);
              });
            },
            icon: const FaIcon(FontAwesomeIcons.github))
      ],
    );
  }
}
