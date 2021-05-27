import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

const List<Color> orangeGradients = [
  Color(0xFFFF9844),
  Color(0xFFFE8853),
  Color(0xFFFD7267),
];
const List<Color> redGradients = [
  Color(0xFF7700FF),
  Color(0xFF8351D4),
  Color(0xFF764C8A),
];
const List<Color> blueGradients = [
  Color(0xFF0F13F8),
  Color(0xFF5570C7),
  Color(0xFF5E8EF7),
];

class _ThirdPageState extends State<ThirdPage> {
  Widget build(BuildContext context) {
    return Material(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 300, minWidth: 200),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 90.0,
              ),
              Container(
                color: Colors.pink,
                height: 200,
                width: 350,
              ), //fin de contaimer
              SizedBox(
                height: 20.0,
              ),
              Container(
                  height: 200,
                  width: 250,
                  decoration: ShapeDecoration(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)), gradient: LinearGradient(colors: orangeGradients, begin: Alignment.topLeft, end: Alignment.bottomRight)),
                  child: Container(
                    padding: EdgeInsets.only(top: 35.0, bottom: 16),
                    child: Text(
                      'Iniciando',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 38, fontWeight: FontWeight.bold),
                    ),
                  ) //fincontainer
                  ), //fin de contaimer
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 50,
                width: 100,
                alignment: Alignment.center,
                decoration: ShapeDecoration(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)), gradient: LinearGradient(colors: blueGradients, begin: Alignment.topLeft, end: Alignment.bottomRight)),
                child: Text(
                  'Hola',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ), //fincontainer
              SizedBox(
                height: 20.0,
              ),
              InkWell(
                  onTap: () {
                    print('que bien, sigamos');
                  },
                  child: Container(padding: EdgeInsets.all(10), decoration: ShapeDecoration(shape: CircleBorder(), gradient: LinearGradient(colors: redGradients, begin: Alignment.topLeft, end: Alignment.bottomRight)), child: ImageIcon(AssetImage("assets/images/hamburguesa.jpg"), size: 100, color: Colors.white)) //fincontainer
                  ),
            ], // fin de widget
          ), //fin de colum
        ),
      ), //constra
    ); //material
  } // widget
} // first page
