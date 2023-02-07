// ignore_for_file: must_be_immutable
import 'package:examen_aziz_essa/widget/header.dart';
import 'package:flutter/material.dart';

class ProfilScreen extends StatelessWidget {
  List<String> skills = [
    'Html',
    'Flutter',
    'Android',
    'Php',
    'Ionic',
    'Dart',
    'Symfony',
    'AWS',
    'Jira',
    'Git',
    'Agile'
  ];

  ProfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: double.infinity,
      width: double.infinity,
      color: Theme.of(context).backgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Header(
            Icon(
              Icons.person,
            ),
            'AZIZ CISSE',
          ),
          const SizedBox(
            height: 10,
          ),
          Divider(
            color: Theme.of(context).primaryColor,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.computer,
                color: Theme.of(context).primaryColor,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                "Développeur Web / Mobile",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 25,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: const <Widget>[
              Icon(
                Icons.contact_mail,
                color: Colors.red,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Contact",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 22,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.mail,
                color: Theme.of(context).primaryColor,
              ),
              const SizedBox(
                width: 22,
              ),
              Text(
                "alaziz6c78@gmail.com",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Theme.of(context).primaryColor,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.phone,
                color: Theme.of(context).primaryColor,
              ),
              const SizedBox(
                width: 22,
              ),
              Text(
                "78 635 78 00",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Theme.of(context).primaryColor,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.maps_home_work,
                color: Theme.of(context).primaryColor,
              ),
              const SizedBox(
                width: 22,
              ),
              Text(
                "Adresse : Dakar / Liberté 6",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Theme.of(context).primaryColor,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: const <Widget>[
              Icon(
                Icons.card_travel,
                color: Colors.red,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Compétences",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 22,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 100,
            child: GridView.count(
              crossAxisCount: 3,
              childAspectRatio: 5,
              children: List.generate(skills.length, (index) {
                return Text(
                  '• ${skills[index]}',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 16,
                  ),
                );
              }),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: const <Widget>[
              Icon(
                Icons.interests,
                color: Colors.red,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Divertissements",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 22,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.search,
                color: Theme.of(context).primaryColor,
              ),
              const SizedBox(
                width: 22,
              ),
              Text(
                "Recherche",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Theme.of(context).primaryColor,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.sports,
                color: Theme.of(context).primaryColor,
              ),
              const SizedBox(
                width: 22,
              ),
              Text(
                "Sport",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Theme.of(context).primaryColor,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.music_note,
                color: Theme.of(context).primaryColor,
              ),
              const SizedBox(
                width: 22,
              ),
              Text(
                "Musique",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Theme.of(context).primaryColor,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
