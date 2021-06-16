import 'package:flutter/material.dart';

class Destination extends StatelessWidget {
  const Destination({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text.rich(
                TextSpan(
                  text: "Wellcome To UTM",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
        ),
      ],
    );
  }
}
