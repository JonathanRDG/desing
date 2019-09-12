import 'package:flutter/material.dart';
class BasicPage extends StatelessWidget {
  final styletitle = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final stylesubtitle = TextStyle(fontSize: 18.0, color: Colors.grey);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            children: <Widget>[
              _createImage(),
              _createTitle(),
              _createActions(),
              _createText(),
              _createText(),
              _createText()
            ],
          ),
      )
    );
  }

  Widget _createImage() {

    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage('https://images7.alphacoders.com/411/thumb-1920-411068.jpg'),
        fit: BoxFit.cover,
        height: 200.0,

      ),
    );

  }

  Widget _createTitle() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0,vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Tortugas Ninja', style: styletitle,),
                  SizedBox(height: 7.0),
                  Text('Super Heroes en Accion', style: stylesubtitle,)
                ],

              ),
            ),
            Icon(Icons.star, color: Colors.red, size: 30.0,),
            Text('41', style: TextStyle( fontSize: 20.0),)
          ],
        ),
      ),
    );
  }

  Widget _createActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call, 'CALL'),
        _accion(Icons.near_me, 'ROUTE'),
        _accion(Icons.share, "SHARE"),


      ],
    );
  }

  Widget _accion(IconData icon, String text) {
    return Column(
      children: <Widget>[
        Icon(icon, color: Colors.blue, size: 40.0),
        SizedBox(height: 5.0,),
        Text(text, style: TextStyle(fontSize:  15.0, color: Colors.blue))
      ],
    );

  }

  Widget _createText() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        child: Text(
          'Las Tortugas Ninja, o formalmente las Tortugas Ninja Mutantes Adolescentes'
              ' (y en algunos países de Hispanoamérica,Tortugas Ninja o simplemente Tortuninjas),'
              ' también abreviado como TMNT (abreviatura de Teenage Mutant Ninja Turtles, título original),'
              ' son un multiverso ficticio de cuatro hermanos pobres, tortugas antropomorfos que,'
              ' como se puede deducir del nombre, son también adolescentes, mutantes y ninjas.'
              ' Cada una de las tortugas está nombrada en honor de artistas famosos del Renacimiento italiano:'
              ' Leonardo (de Leonardo da Vinci)'
              ' - azul, Raphael (Rafael Sanzio) - rojo, Michelangelo (Miguel Ángel Buonarroti) - naranja,'
              ' Donatello (Donatello) - violeta, incluso su maestro, Splinter, lleva el apodo de un importante pintor del Quattrocento,'
              ' (Giovanni di Ser Giovanni, llamado «Scheggia», es decir "Splinter" . Existe un rumor que dice que hay una quinta tortuga ninja,'
              ' la de color amarillo llamado Piernesto (de Picasso) que aparece en un episodio en el que las ayuda a salvar el mundo. Las TMNT viven'
              ' a menudo en las alcantarillas de Nueva York, pero también han vivido en otros lugares, como la granja de la abuela de April '
              'ONeil en Northampton, Massachusetts, viejas estaciones del metro subterráneo y el apartamento de April ONeil. '
            'Las Tortugas Ninja han inspirado el nombre de una tortuga prehistórica que tiene cuernos y una cola llena de picos.'
        ' Los científicos ubicaron este animal en un nuevo género, Ninjemys, que significa la "tortuga ninja".',textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
