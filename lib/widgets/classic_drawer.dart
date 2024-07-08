import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../config/theme.dart';


class classicDrawer extends StatelessWidget {
  const classicDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      backgroundColor: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 300,
            color: CustomColors.headersPrimary,
            width: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.person,
                  size: 50,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Hola! :)",
                  style: CustomFonts.titulosEstilo,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(
              Icons.home,
              color: CustomColors.iconColor,
              size: 35,
            ),
            title: Text(
              "Inicio",
              style: CustomFonts.drawerTextoTileEstilo,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(
              Icons.person,
              color: CustomColors.iconColor,
              size: 35,
            ),
            title: Text(
              "Contacto",
              style: CustomFonts.drawerTextoTileEstilo,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(
              Icons.folder,
              color: CustomColors.iconColor,
              size: 35,
            ),
            title: Text(
              "Proyectos",
              style: CustomFonts.drawerTextoTileEstilo,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(
              Icons.school,
              color: CustomColors.iconColor,
              size: 35,
            ),
            title: Text(
              "Educacion",
              style: CustomFonts.drawerTextoTileEstilo,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Divider(
            color: Colors.black87,
            thickness: 2.0,
            indent: 25,
            endIndent: 25,
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.only(bottom: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const FaIcon(
                      size: 35,
                      FontAwesomeIcons.linkedin,
                      color: CustomColors.iconColor,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const FaIcon(
                      size: 35,
                      FontAwesomeIcons.github,
                      color: CustomColors.iconColor,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
