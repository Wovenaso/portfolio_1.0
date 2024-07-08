import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.black87,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(20),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Bienvenidos\na mi\nportafolio!\n\n\n",
                      style: GoogleFonts.inter(
                        color: Color.fromARGB(255, 249, 70, 97),
                        fontWeight: FontWeight.w800,
                        fontSize: 50
                      )
                    ),
                    TextSpan(
                      text: "Carlos",
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 25
                      )
                    ),
                    TextSpan(
                      text: " Daniel\n",
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 25
                      )
                    ),
                    TextSpan(
                      text: "Santillan",
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 25
                      )
                    ),
                    TextSpan(
                      text: " Contreras",
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 25
                      )
                    ),
                  ]
                )),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), 
                  topRight: Radius.circular(20))
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: _floatingNavBar(),
    );
  }

  FloatingNavbar _floatingNavBar() {
    return FloatingNavbar(
      elevation: 0,

      iconSize: 30,
      borderRadius: 30,
      itemBorderRadius: 25,
      currentIndex: _selectedIndex,
      onTap: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      items: [
        FloatingNavbarItem(
           icon: 
            _selectedIndex == 0
              ? Icons.folder
              : Icons.folder_open,),
        FloatingNavbarItem(
           icon: 
            _selectedIndex == 1
              ? Icons.person
              : Icons.person_outline,),
        ],
      );
  }

  BottomNavigationBar _bottomNavigationBar() {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              _selectedIndex == 0
                ? Icons.folder
                : Icons.folder_open,
              size: 30,
              color: Colors.black87,),
                ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              _selectedIndex == 1
                ? Icons.person
                : Icons.person_outline,
              size: 30,
              color: Colors.black87,),
                ),


        ]);
  }
}
