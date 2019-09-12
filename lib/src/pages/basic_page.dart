import 'package:flutter/material.dart';
class BasicPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Image(
            image: NetworkImage('https://images7.alphacoders.com/411/thumb-1920-411068.jpg'),

          ),
          Row(
            children: <Widget>[
              Column(

              )
            ],
          )
        ],
      )
    );
  }
}
