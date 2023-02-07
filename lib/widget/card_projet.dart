// ignore_for_file: deprecated_member_use, must_be_immutable
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CardProjet extends StatelessWidget {
  String image;
  String title;
  String link;

  CardProjet(this.image, this.title, this.link, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontStyle: FontStyle.normal,
              fontSize: 27,
              backgroundColor: Colors.white,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: 'Voir Le projet',
              recognizer: TapGestureRecognizer()
                ..onTap = () async {
                  await launch(link);
                },
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                decoration: TextDecoration.underline,
                color: Colors.blue,
                backgroundColor: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
