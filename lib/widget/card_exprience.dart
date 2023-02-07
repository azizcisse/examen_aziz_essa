// ignore_for_file: library_private_types_in_public_api, file_names
import 'package:flutter/material.dart';

class CardExperience extends StatefulWidget {
  const CardExperience({super.key});

  @override
  _CardExperienceState createState() => _CardExperienceState();
}

class _CardExperienceState extends State<CardExperience> {
  bool isOpen = false;
  List<String> skills = [
    "Application Web Gestion Pharmacie",
    'Site Web DIATRANSCOM Keur Massar',
    'Application Web Gestion Document Scolaire',
    'Mise en place de la sécurité de base d’un serveur d’entreprise',
    'Référent technique du projet',
    "Mise en place d’un système de messaging (sms, mail et notification)",
    "Mise en place d’un déploiement continue",
    "Gestion des livraisons (API, Sites et applications)",
    "Gestion des services S3, ECS et SNS d’Amazon"
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isOpen = !isOpen;
        });
      },
      child: AnimatedContainer(
        curve: Curves.easeInOutQuint,
        padding: const EdgeInsets.all(8),
        duration: const Duration(milliseconds: 600),
        height: isOpen ? 480 : 180,
        color: Colors.white30,
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: const <Widget>[
                      Icon(
                        Icons.domain,
                        color: Colors.red,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "AAIF Dakar",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 22,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Avril 2020 à Oct 2020",
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 14,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Ingénieur développeur FullStack",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'BlaBla BlaBla BlaBla BlaBla BlaBla BlaBla BlaBla BlaBla BlaBla BlaBla BlaBla BlaBla BlaBla BlaBlaBlaBla BlaBla BlaBla BlaBla BlaBla BlaBla BlaBlaBlaBla BlaBla BlaBla BlaBla BlaBla BlaBla BlaBla',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                height: (skills.length * 19).toDouble(),
                child: GridView.count(
                  physics: const BouncingScrollPhysics(),
                  crossAxisCount: 1,
                  childAspectRatio: 20,
                  children: List.generate(skills.length, (index) {
                    return Text(
                      '• ${skills[index]}',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 14,
                      ),
                    );
                  }),
                ),
              ),
              Text(
                "Environnement technique : ",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  decoration: TextDecoration.underline,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'BACK :  Java j2ee, Rest, spring boot, spring data, hibernate, liquibase, mysql, ElasticSearch, docker, AWS S3, AWS ECS, AWS SNS, Magento',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                ),
              ),
              Text(
                'Application mobile : Ionic 4, angularjs, cordova, html, css, Firebase, Apple push notification',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                ),
              ),
              Text(
                'Application mobile : Ionic 4, angularjs, cordova, html, css, Firebase, Apple push notification',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                ),
              ),
              Text(
                'Autres : gitlab, git, sourcetree, JIRA, Confluence,',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
