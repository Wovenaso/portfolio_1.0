import 'package:flutter/material.dart';
import 'package:portfolio/config/global.dart';
import 'package:portfolio/config/theme.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:portfolio/pages/contacto.dart';
import 'package:portfolio/pages/principal.dart';
import 'package:portfolio/pages/proyectos.dart';

class HomePagina extends StatefulWidget {

  const HomePagina({super.key});

  @override
  State<HomePagina> createState() => _HomePaginaState();
}

class _HomePaginaState extends State<HomePagina> {
  bool mobile = false;
  final double _navIconSize = 20;
  final double _appBarIconSize = 25;


  @override
  Widget build(BuildContext context) {
    mobile = MediaQuery.of(context).size.width <= 500;

    List paginas = [
      const principalPage(),
      const proyectosPage(),
      const contactoPage()
    ];

    return Scaffold(
        appBar: mobile ? null : _appBar(),
        backgroundColor: CustomColors.backgroundScaffold,
        body: paginas[indexNavbar],
        bottomNavigationBar: mobile ? _gNavBar() : null);
  }

  Container _gNavBar() {
    return Container(
      color: CustomColors.bottomNavBar,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
        child: GNav(
            padding: const EdgeInsets.all(15),
            backgroundColor: CustomColors.bottomNavBar,
            tabBackgroundColor: CustomColors.bottomNavBaraActivePage,
            selectedIndex: indexNavbar,
            onTabChange: (index) {
              setState(() {
                indexNavbar = index;
              });
            },
            tabs: [
              GButton(
                iconSize: _navIconSize,
                icon: Icons.home,
                text: "Inicio",
              ),
              GButton(
                iconSize: _navIconSize,
                icon: Icons.folder,
                text: "Proyectos",
              ),
              GButton(
                iconSize: _navIconSize,
                icon: Icons.person,
                text: "Contacto",
              ),
            ]),
      ),
    );
  }

  AppBar _appBar() {
    List<Widget> navItems = [
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: TextButton(
          style: ButtonStyle(overlayColor:
              MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
            return CustomColors.bottomNavBaraActivePage;
          })),
          onPressed: () {
            setState(() {
              indexNavbar = 0;
            });
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.home, size: _appBarIconSize),
              const SizedBox(
                width: 5,
              ),
              Text("Inicio", style: CustomFonts.botonTextoEstilo),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: TextButton(
          style: ButtonStyle(overlayColor:
              MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
            return CustomColors.bottomNavBaraActivePage;
          })),
          onPressed: () {
            setState(() {
              indexNavbar = 1;
            });
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.folder,
                  size: _appBarIconSize, color: Colors.amber[200]),
              const SizedBox(
                width: 5,
              ),
              Text("Proyectos", style: CustomFonts.botonTextoEstilo),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: TextButton(
          style: ButtonStyle(overlayColor:
              MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
            return CustomColors.bottomNavBaraActivePage;
          })),
          onPressed: () {
            setState(() {
              indexNavbar = 2;
            });
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.person,
                size: _appBarIconSize,
                color: Color.fromARGB(255, 92, 149, 75),
              ),
              const SizedBox(
                width: 5,
              ),
              Text("Contacto", style: CustomFonts.botonTextoEstilo),
            ],
          ),
        ),
      ),
    ];

    return AppBar(
      elevation: 0,
      toolbarHeight: 70,
      centerTitle: true,
      backgroundColor: CustomColors.headersPrimary,
      actions: navItems,
      leadingWidth: 100,
      leading: GestureDetector(
          onTap: () {
          },
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset('assets/logoprincipal.png'),
          )),
    );
  }
}
