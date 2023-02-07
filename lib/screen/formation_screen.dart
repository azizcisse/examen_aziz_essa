// ignore_for_file: must_be_immutable
import 'package:examen_aziz_essa/widget/card_formation.dart';
import 'package:examen_aziz_essa/widget/header.dart';
import 'package:flutter/material.dart';
import 'package:timeline_list/timeline.dart';
import 'package:timeline_list/timeline_model.dart';

class FormationScreen extends StatelessWidget {
  List<TimelineModel> items = [
    TimelineModel(
      CardFormation('assets/images/essa.png', '2021', 'Master GL&SSI'),
      position: TimelineItemPosition.left,
      iconBackground: Colors.green,
      icon: const Icon(Icons.school),
    ),
    TimelineModel(
      CardFormation('assets/images/simplon.png', '2020', 'Developpement Web'),
      position: TimelineItemPosition.right,
      iconBackground: Colors.redAccent,
      icon: const Icon(Icons.school),
    ),
    TimelineModel(
      CardFormation('assets/images/onfp.jpg', '2019', 'Developpement Web'),
      position: TimelineItemPosition.left,
      iconBackground: Colors.blue,
      icon: const Icon(Icons.school),
    ),
    TimelineModel(
      CardFormation('assets/images/iprosi.png', '2016', 'Licence SESINE'),
      position: TimelineItemPosition.right,
      iconBackground: Colors.amber,
      icon: const Icon(Icons.school),
    )
  ];

  FormationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: double.infinity,
      width: double.infinity,
      color: Theme.of(context).backgroundColor,
      child: Column(
        children: <Widget>[
          const Header(Icon(Icons.school), 'Formations'),
          const SizedBox(
            height: 10,
          ),
          Divider(
            color: Theme.of(context).canvasColor,
          ),
          Expanded(
            child: Timeline(
              lineColor: Theme.of(context).primaryColor,
              children: items,
              position: TimelinePosition.Center,
            ),
          )
        ],
      ),
    );
  }
}
