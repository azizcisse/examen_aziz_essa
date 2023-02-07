// ignore_for_file: import_of_legacy_library_into_null_safe
import 'package:examen_aziz_essa/model/projet.dart';
import 'package:examen_aziz_essa/widget/card_projet.dart';
import 'package:examen_aziz_essa/widget/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class ProjetScreen extends StatelessWidget {
  final List<Projet> _projet = [
    Projet(
        image: 'assets/images/P.png',
        title: 'Projet Dans Ma Chaine Youtube',
        link: 'https://www.youtube.com/channel/UCmq5KmzdGIw8tKJUs0hLgQw'),
    Projet(
        image: 'assets/images/pharmacie.png',
        title: 'Gestion de Pharmacie',
        link:
            'https://play.google.com/store/apps/details?id=com.radeonisos.score_games'),
    Projet(
        image: 'assets/images/defiabs.webp',
        title: 'Application de Jeu pour les enfants',
        link:
            'https://play.google.com/store/apps/details?id=com.entreprise.davfou.abschallenge')
  ];

  ProjetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: double.infinity,
      width: double.infinity,
      color: Theme.of(context).backgroundColor,
      child: Column(
        children: <Widget>[
          const Header(
            Icon(Icons.phonelink),
            'Projets',
          ),
          const SizedBox(
            height: 10,
          ),
          Divider(
            color: Theme.of(context).primaryColor,
          ),
          Expanded(
            child: Swiper(
              itemBuilder: (BuildContext context, int index) {
                return CardProjet(_projet[index].image, _projet[index].title,
                    _projet[index].link);
              },
              itemCount: 3,
              loop: true,
              scrollDirection: Axis.vertical,
              pagination: const SwiperPagination(),
              control: const SwiperControl(),
              viewportFraction: 0.8,
              scale: 0.9,
              itemWidth: 300.0,
              itemHeight: 400.0,
              layout: SwiperLayout.TINDER,
            ),
          )
        ],
      ),
    );
  }
}
