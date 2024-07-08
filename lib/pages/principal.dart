import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/config/global.dart';
import 'package:portfolio/config/theme.dart';
import 'package:portfolio/constants/skills.dart';
import 'package:portfolio/pages/proyectos.dart';

class principalPage extends StatefulWidget {
  const principalPage({super.key});

  @override
  State<principalPage> createState() => _principalPageState();
}

class _principalPageState extends State<principalPage> {
  bool mobile = false;
  @override
  Widget build(BuildContext context) {
    mobile = mobile = MediaQuery.of(context).size.width <= 600;

    return Container(
      width: double.maxFinite,
      child: mobile ? _cuerpoPrincipalMobile() : _cuerpoPrincipalDesktop(),
    );
  }

  ListView _cuerpoPrincipalDesktop() {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Container(
            alignment: AlignmentDirectional.topStart,
            color: Colors.black,
            width: double.maxFinite,
            height: 500,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                        height: 400, width: 400, child: FlutterLogo()),
                    SizedBox(
                      width: 900,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Mi nombre es Carlos Daniel Santillan Contreras",
                            style: CustomFonts.textoEstilo,
                          ),
                          Text(
                            "Desarrollador FullStack - Flutter",
                            style: GoogleFonts.inter(
                                fontSize: 30, fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Text(
                            textAlign: TextAlign.justify,
                            "Mi enfoque se centra en crear aplicaciones elegantes y funcionales con una interfaz de usuario limpia y atractiva. Siempre estoy buscando nuevos desafíos y oportunidades para aprender y crecer. Echa un vistazo a mis proyectos y no dudes en contactarme si quieres colaborar o simplemente charlar sobre tecnología.\n¡Bienvenido a mi rincón digital! 🚀",
                            style: GoogleFonts.inter(
                                fontSize: 22, fontWeight: FontWeight.w200),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.all(20),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  backgroundColor: Colors.lightBlue[200]),
                              onPressed: () {
                                setState(() {
                                  indexNavbar = 1;
                                });
                              },
                              child: Text(
                                "Ver Proyectos!",
                                style: GoogleFonts.inter(fontSize: 25),
                              ))
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 100,
                    ),
                  ],
                ),
              ),
            )),
        Container(
          color: CustomColors.bgLight1,
          width: double.maxFinite,
          padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Text(
              "Que puedo hacer",
              style: CustomFonts.subtitulosEstilo,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 450,
                  ),
                  child: Wrap(spacing: 5, runSpacing: 5, children: [
                    for (int i = 0; i < skillsList.length; i++)
                      Container(
                        width: 200,
                        decoration: BoxDecoration(
                            color: CustomColors.bgLight2,
                            borderRadius: BorderRadius.circular(5)),
                        child: ListTile(
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          leading: Icon(
                            skillsList[i]["img"],
                            color: Colors.white,
                          ),
                          title: Text(skillsList[i]["titulo"]),
                        ),
                      ),
                  ]),
                ),
                const SizedBox(
                  width: 50,
                ),
                Flexible(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 500),
                    child: Wrap(
                      spacing: 5,
                      runSpacing: 5,
                      children: [
                        for (int i = 0; i < platformList.length; i++)
                          Chip(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 16),
                            label: Text(platformList[i]["titulo"]),
                            avatar: Image.asset(platformList[i]["img"]),
                          )
                      ],
                    ),
                  ),
                )
              ],
            )
          ]),
        ),
        Container(
          color: Colors.blueGrey[600],
          width: double.maxFinite,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Estudios",
                  style: CustomFonts.titulosEstilo,
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Image.asset(
                        "assets/logotec.png",
                        width: 300,
                        height: 300,
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Image.asset(
                        "assets/halcon.png",
                        width: 300,
                        height: 300,
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blueGrey[800],
                      ),
                      width: 700,
                      height: 400,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "TecNM Campus Jiquilpan",
                            style: CustomFonts.titulosEstilo,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Estudie la carrera de Ingenieria en Sistemas Computacionales con especialidad en redes, durante la carrera aprendi los lenguajes de Java, Javascript, PHP, SQL, Haskell, Arduino, SolidWorks, tambien maneje dispositivos de red Cisco y el simulador de redes PacketTracer.",
                            textAlign: TextAlign.justify,
                            style: CustomFonts.textoEstilo,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Durante mi carrera obtuve certificados de Ingles, SolidWorks, JavaSript y Python, los cuales segui aprendiendo por mi cuenta y ahora tengo un poco de experiencia laboral en esos lenguajes de programacion.",
                            textAlign: TextAlign.justify,
                            style: CustomFonts.textoEstilo,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Participe en los eventos de InnovaTec en los cuales gane el primer lugar en las etapas local (Jiquilpan, Michoacan) y regional (Leon, Guanajuato) con mi equipo CupSup, asi como la participacion en la etapa nacional (Durango, Durango)",
                            textAlign: TextAlign.justify,
                            style: CustomFonts.textoEstilo,
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  ListView _cuerpoPrincipalMobile() {
    return ListView(
      children: [
        Container(
          width: 500,
          padding: const EdgeInsets.all(25),
          color: Colors.black,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                  child:
                      SizedBox(height: 200, width: 200, child: FlutterLogo())),
              Text(
                maxLines: 2,
                "Mi nombre es Carlos Daniel Santillan Contreras",
                style: GoogleFonts.inter(
                    fontSize: 30, fontWeight: FontWeight.w200),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "Desarrollador FullStack - Flutter",
                style: GoogleFonts.inter(
                    fontSize: 20, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                textAlign: TextAlign.justify,
                "Mi enfoque se centra en crear aplicaciones elegantes y funcionales con una interfaz de usuario limpia y atractiva. Siempre estoy buscando nuevos desafíos y oportunidades para aprender y crecer. Echa un vistazo a mis proyectos y no dudes en contactarme si quieres colaborar o simplemente charlar sobre tecnología. ¡Bienvenido a mi rincón digital! 🚀",
                style: GoogleFonts.inter(
                    fontSize: 20, fontWeight: FontWeight.w200),
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      backgroundColor: Colors.lightBlue[200]),
                  onPressed: () {
                    setState(() {
                      indexNavbar = 1;
                    });
                  },
                  child: Text(
                    "Ver Proyectos!",
                    style: GoogleFonts.inter(fontSize: 25),
                  ))
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20),
          color: CustomColors.bgLight1,
          child: Column(
            children: [
              Text(
                "Lo que puedo hacer",
                style: CustomFontsMobile.subtitulosEstilo,
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ConstrainedBox(
                    constraints: const BoxConstraints(
                      maxWidth: 450,
                    ),
                    child: Wrap(spacing: 5, runSpacing: 5, children: [
                      for (int i = 0; i < skillsList.length; i++)
                        Container(
                          width: 150,
                          decoration: BoxDecoration(
                              color: CustomColors.bgLight2,
                              borderRadius: BorderRadius.circular(5)),
                          child: ListTile(
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            leading: Icon(
                              skillsList[i]["img"],
                              color: Colors.white,
                            ),
                            title: Text(
                              skillsList[i]["titulo"],
                              style: const TextStyle(fontSize: 15),
                            ),
                          ),
                        ),
                    ]),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Wrap(
                    alignment: WrapAlignment.center,
                    spacing: 5,
                    runSpacing: 5,
                    children: [
                      for (int i = 0; i < platformList.length; i++)
                        Chip(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 16),
                          label: Text(platformList[i]["titulo"]),
                          avatar: Image.asset(platformList[i]["img"]),
                        )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        Container(
          color: Colors.blueGrey[600],
          width: double.maxFinite,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Estudios",
                style: CustomFonts.titulosEstilo,
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Image.asset(
                      "assets/logotec.png",
                      width: 300,
                      height: 300,
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Image.asset(
                      "assets/halcon.png",
                      width: 300,
                      height: 300,
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blueGrey[800],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "TecNM Campus Jiquilpan",
                          style: CustomFonts.titulosEstilo,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Estudie la carrera de Ingenieria en Sistemas Computacionales con especialidad en redes, durante la carrera aprendi los lenguajes de Java, Javascript, PHP, SQL, Haskell, Arduino, SolidWorks, tambien maneje dispositivos de red Cisco y el simulador de redes PacketTracer.",
                          textAlign: TextAlign.justify,
                          style: CustomFonts.textoEstilo,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Durante mi carrera obtuve certificados de Ingles, SolidWorks, JavaSript y Python, los cuales segui aprendiendo por mi cuenta y ahora tengo un poco de experiencia laboral en esos lenguajes de programacion.",
                          textAlign: TextAlign.justify,
                          style: CustomFonts.textoEstilo,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Participe en los eventos de InnovaTec en los cuales gane el primer lugar en las etapas local (Jiquilpan, Michoacan) y regional (Leon, Guanajuato) con mi equipo CupSup, asi como la participacion en la etapa nacional (Durango, Durango)",
                          textAlign: TextAlign.justify,
                          style: CustomFonts.textoEstilo,
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
