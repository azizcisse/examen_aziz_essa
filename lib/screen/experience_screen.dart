import 'package:examen_aziz_essa/widget/card_exprience.dart';
import 'package:examen_aziz_essa/widget/header.dart';
import 'package:flutter/material.dart';

class ExperienceScreen extends StatelessWidget {
  const ExperienceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: double.infinity,
      width: double.infinity,
      color: Theme.of(context).backgroundColor,
      child: Column(
        children: <Widget>[
          const Header(Icon(Icons.update), 'Expériences'),
          const SizedBox(
            height: 10,
          ),
          Divider(
            color: Theme.of(context).primaryColor,
          ),
          Expanded(
            child: ListView.separated(
                padding: const EdgeInsets.all(10),
                itemBuilder: (BuildContext ctx, int index) {
                  return const CardExperience();
                },
                separatorBuilder: (BuildContext ctx, int index) {
                  return const SizedBox(
                    height: 15,
                  );
                },
                itemCount: 3),
          )
        ],
      ),
    );
  }
}
