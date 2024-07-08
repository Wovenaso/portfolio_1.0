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
             Text("*En desarrollo*", style: CustomFonts.titulosEstilo,textAlign: TextAlign.justify,),
             const SizedBox(height: 20,),
             Text("Esta aplicacion es un Punto de Venta multiplataforma para la empresa RedSun, la cual se dedica a la venta e instalacion de paneles solares, asi como equipo y materiales para el mantenimiento de piscinas", style: CustomFonts.textoEstilo,textAlign: TextAlign.justify,),
             const SizedBox(height: 20,),
             Text("Para esta app se esta ulizando Firebase como base de datos para almacenar todos los datos que maneja RedSun y tambien los datos futuros de ventas y compras que se crearan a partir de esta app.",style: CustomFonts.textoEstilo, textAlign: TextAlign.justify),
             const SizedBox(height: 20,),
             Text("El Front-end esta siendo desarrollado en Flutter debido a la facilidad que tiene para crear apps multiplataforma, esta app sera lanzada para todas las plataformas disponibles",style: CustomFonts.textoEstilo, textAlign: TextAlign.justify),
             const SizedBox(height: 20,),
            
          ]),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 300,
                child: Wrap(
                  spacing: 10,
                    children:  [
                      Container(
                        color: CustomColors.bgLight2,
                        child:  ListTile(
                          leading: const  FaIcon(FontAwesomeIcons.windows),
                          title: Text("Windows", style: CustomFonts.textoEstilo,),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Container(
                        color: CustomColors.bgLight2,
                        child:  ListTile(
                          leading: const  FaIcon(FontAwesomeIcons.apple),
                          title: Text("MacOS & iOS", style: CustomFonts.textoEstilo,),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Container(
                        color: CustomColors.bgLight2,
                        child:  ListTile(
                          leading: const  FaIcon(FontAwesomeIcons.desktop),
                          title: Text("Web", style: CustomFonts.textoEstilo,),
                        ),
                      ),
                      const SizedBox(height: 10,),
                    ],
                  ),
              ),
              const SizedBox(width: 50,),
              SizedBox(
                width: 600,
                child: Text("Esta aplicacion se preve ser lanzada para el Q3 del 2024 y tambien se continuara con una version mas optimizada y generica para que otras empresas puedan tener un sistema de invetariado simple!",
                style: CustomFonts.textoEstilo, textAlign: TextAlign.justify,),
              )
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