import 'package:flutter/material.dart';
class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Scaffold(
          body: PageView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              _page1(),
              _page2(context)
            ],
          ),
        ),
      ),
    );
  }

  Widget _page1() {
    return Stack(
      children: <Widget>[
        _backgroundColor(),
        _backgroundImage(),
        _text()
      ],
    );

  }

  Widget _page2(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        color:  Color.fromRGBO(108,192, 218, 1.0),
        child: Center(
          child: RaisedButton(
            shape: StadiumBorder(),
            color:  Colors.blue,
            textColor: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
            child:Text('Bienvenidos',style: TextStyle(fontSize: 20.0),),
          ),
          onPressed: () {
              Navigator.pushNamed(context, 'botons');
          },
          ),
        )
    );
  }

  Widget _backgroundColor() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108,192,218,1.0),

    );
  }

  Widget _backgroundImage() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/scroll-1.png'),
        fit: BoxFit.cover,
      ),

    );
  }

  Widget _text() {
    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(height: 20.0,),
          Text('11º', style: styleText),
          Text('Miercoles', style: styleText),
          Expanded(child: Container()),
          Icon(Icons.keyboard_arrow_down, size: 70.0, color: Colors.white,)
        ],
      ),
    );
  }

  final styleText = TextStyle(color: Colors.white, fontSize: 50.0);
}
