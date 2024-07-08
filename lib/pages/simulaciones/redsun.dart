import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/config/theme.dart';

class redsunpos extends StatefulWidget {
  const redsunpos({super.key});

  @override
  State<redsunpos> createState() => _redsunposState();
}

class _redsunposState extends State<redsunpos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: _appBar(),
      body: _cuerpo(),
    );
  }

  ListView _cuerpo() {
    return ListView(
      padding: const EdgeInsets.all(30),
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text("Esta aplicacion fue creada para la configuracion y monitoreo de los dispositivos de red HUAWEI.", style: CustomFonts.textoEstilo,textAlign: TextAlign.justify,),
             const SizedBox(height: 20,),
             Text("Se ultilizo Python para el back-end el cual consistia en un servidor web el cual funcionaba como un intermediario entre el dispositivo al cual se deseaba configurar o monitorear",style: CustomFonts.textoEstilo, textAlign: TextAlign.justify),
             const SizedBox(height: 20,),
             Text("Para este servidor se utlizaron los siguiente paquetes",style: CustomFonts.textoEstilo, textAlign: TextAlign.justify),
             const SizedBox(height: 20,),
            
          ]),
          Column(
              children:  [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: CustomColors.bgLight2,
                  ),
                  
                  child:  ListTile(
                    leading: const  Icon(Icons.circle),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Flask", style: CustomFonts.subtitulosEstilo,),
                        Text("Modulo utilizado para el servidor web", style: CustomFonts.textoEstilo,textAlign: TextAlign.justify),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: CustomColors.bgLight2,
                  ),
                  child:  ListTile(
                    leading: const  Icon(Icons.circle),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Netmiko", style: CustomFonts.subtitulosEstilo,),
                        Text("Modulo utilizado para crear la comunicacion entre el servidor web y los dispositivos de red", style: CustomFonts.textoEstilo,textAlign: TextAlign.justify),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: CustomColors.bgLight2,
                  ),
                  child:  ListTile(
                    leading: const  Icon(Icons.circle),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Telebot", style: CustomFonts.subtitulosEstilo,),
                        Text("Modulo utilizado para mandar mensajes mediante Telegram para avisar movimientos o problemas en el sistema", style: CustomFonts.textoEstilo,textAlign: TextAlign.justify),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: CustomColors.bgLight2,
                  ),
                  child:  ListTile(
                    leading: const  Icon(Icons.circle),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Filtro", style: CustomFonts.subtitulosEstilo,),
                        Text("Modulo creado para el formateo de datos extraidos de los dispositivos de red", style: CustomFonts.textoEstilo, textAlign: TextAlign.justify,),
                      ],
                    ),
                  ),
                ),
              ],
            ),
      ]);
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 0,
      title: RichText(
        text: TextSpan(
          children: [
            TextSpan(text: "RedSun", style: GoogleFonts.inter(fontSize: 40, fontWeight: FontWeight.w200, color: Colors.white)),
            TextSpan(text: "P.O.S", style: GoogleFonts.inter(fontSize: 40, fontWeight: FontWeight.w600, color: Colors.white))
          ]
        ),
      ),
      actions: [
        IconButton(
          iconSize: 30,
          onPressed: () {
          
        }, icon: const FaIcon(FontAwesomeIcons.github))
      ],);
  }
}