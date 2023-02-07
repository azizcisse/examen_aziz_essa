import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:examen_aziz_essa/screen/experience_screen.dart';
import 'package:examen_aziz_essa/screen/formation_screen.dart';
import 'package:examen_aziz_essa/screen/profil_screen.dart';
import 'package:examen_aziz_essa/screen/projet_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  int _indexPages = 0;

  List<Widget> pages = [
    ProfilScreen(),
    const ExperienceScreen(),
    FormationScreen(),
    ProjetScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "CURRICULUM VITAE",
          style: GoogleFonts.poppins(
            color: Colors.red,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.dark_mode,
            ),
            onPressed: () {},
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        color: Theme.of(context).primaryColor,
        backgroundColor: Theme.of(context).backgroundColor,
        items: const <Widget>[
          Icon(
            Icons.person,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.update,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.school,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.phonelink,
            size: 30,
            color: Colors.white,
          )
        ],
        onTap: (index) {
          setState(() {
            _indexPages = index;
          });
        },
      ),
      body: pages[_indexPages],
    );
  }
}
