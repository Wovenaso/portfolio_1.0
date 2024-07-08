import 'package:flutter/material.dart';
import 'package:portfolio/constants/proyectos.dart';

import '../config/theme.dart';

class ProyectoCard extends StatelessWidget {
  final String nombre;
  final String empresa;
  final List<Map> lenguajes;
  final String portada;
  final String descripcion;

  const ProyectoCard(
      {super.key,
      required this.nombre,
      required this.empresa,
      required this.lenguajes,
      required this.portada, 
      required this.descripcion});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(
          color: CustomColors.bgLight2,
          borderRadius: BorderRadius.all(Radius.circular(30))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.white70),
            width: double.maxFinite,
            height: 250,
            child: Image.asset(portada),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text(nombre, style: CustomFonts.titulosCardEstilo),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(descripcion, style: CustomFonts.textoCardEstilo),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            constraints: BoxConstraints(maxHeight: 50),
            width: double.maxFinite,
            height: 70,
            color: Colors.grey[800],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Lenguajes:", style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),textAlign: TextAlign.justify),
                Spacer(),
                Wrap(
                  spacing: 2,
                  children: [
                    for(int i=0;i<lenguajes.length;i++)
                    Chip(
                      label: Text(lenguajes[i]["titulo"], style: TextStyle(fontSize: 10),),
                      avatar: Image.asset(lenguajes[i]["img"]),
                      )
                  ],
                )
            ]),
          )
        ],
      ),
    );
  }
}
