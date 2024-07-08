import 'package:flutter/material.dart';
import 'dart:js' as js;
import 'package:portfolio/constants/proyectos.dart';
import 'package:portfolio/pages/simulaciones/redsun.dart';
import '../config/theme.dart';
import '../pages/simulaciones/velocom.dart';

class ProyectoCard extends StatelessWidget {
  final String nombre;
  final String empresa;
  final List<Map> lenguajes;
  final String portada;
  final String descripcion;
  final int pagina;

  const ProyectoCard(
      {super.key,
      required this.nombre,
      required this.empresa,
      required this.lenguajes,
      required this.portada,
      required this.descripcion, required this.pagina});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: InkWell(
        onTap: () {

          if(pagina == 0) {
            Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const velocom_simulation(),
            ));
          }

            if(pagina == 1) {
              Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const redsunpos(),
            ));
            }
        },
        child: Container(
          clipBehavior: Clip.antiAlias,
          width: 400,
          height: 400,
          decoration: const BoxDecoration(
              color: CustomColors.bgLight2,
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: const BoxDecoration(color: Colors.white70),
                width: double.maxFinite,
                height: 200,
                child: Image.asset(
                  portada,
                  fit: BoxFit.contain,
                  height: 100,
                  width: 50,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child: Text(nombre, style: CustomFonts.titulosCardEstilo),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(descripcion, style: CustomFonts.textoCardEstilo),
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                constraints: const BoxConstraints(maxHeight: 50),
                width: double.maxFinite,
                height: 70,
                color: Colors.grey[800],
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text("Lenguajes:",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 12),
                          textAlign: TextAlign.justify),
                      const Spacer(),
                      Wrap(
                        spacing: 20,
                        children: [
                          for (int i = 0; i < lenguajes.length; i++)
                            Image.asset(
                              lenguajes[i]["img"],
                              height: 20,
                              width: 20,
                            ),
                        ],
                      )
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
