import 'package:flutter/material.dart';
import 'package:portfolio/config/theme.dart';
import 'package:portfolio/constants/proyectos.dart';
import 'package:portfolio/widgets/proyectos_card.dart';

class proyectosPage extends StatefulWidget {
  const proyectosPage({super.key});

  @override
  State<proyectosPage> createState() => _proyectosPageState();
}

class _proyectosPageState extends State<proyectosPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      color: Colors.black,
      child: ListView(
          children: [
        Text(
          "Proyectos Realizados",
          style: CustomFontsMobile.titulosEstilo,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          width: double.maxFinite,
          child: Wrap(
            alignment: WrapAlignment.center,
            spacing: 20,
            runSpacing: 20,
            children: [
              for(int i=0; i<proyectosLista.length; i++)
                ProyectoCard(
                descripcion: proyectosLista[i]["descripcion"],
                empresa: proyectosLista[i]["empresa"],
                nombre: proyectosLista[i]["nombre"],
                portada: proyectosLista[i]["img"],
                lenguajes: proyectosLista[i]["lenguajes"],
                pagina: proyectosLista[i]["pagina"],
              )
            ],)),
          ],
      ),
    );
  }
}
