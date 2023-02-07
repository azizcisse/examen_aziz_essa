// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';

class CardFormation extends StatelessWidget {
  String image;
  String year;
  String title;

  CardFormation(this.image, this.year, this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      width: MediaQuery.of(context).size.width / 2.5,
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
              child: Image.asset(
                image,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              year,
              style: const TextStyle(
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
            const SizedBox(
              height: 5,
            )
          ],
        ),
      ),
    );
  }
}
