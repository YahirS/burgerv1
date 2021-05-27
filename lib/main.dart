import 'package:flutter/material.dart';
import 'package:sanchez/pages/first_pages.dart';
import 'package:sanchez/pages/second_pages.dart';
import 'package:sanchez/pages/third_pages.dart';

void main() => runApp(Sanchezapp());

class Sanchezapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter burger sanchez',
      home: PaginaInicio(),
    );
  }
} //fin de class Sanchezapp

class PaginaInicio extends StatefulWidget {
  @override
  _PaginaInicioState createState() => _PaginaInicioState();
}

class _PaginaInicioState extends State<PaginaInicio> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    Widget child;
    switch (_index) {
      case 0:
        child = FlutterLogo();
        break;
      case 1:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new SecondPage());
        break;
      case 2:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new ThirdPage());
        break;
    } //fin de switch seleccion de paginas
    return Scaffold(
      body: SizedBox.expand(child: child),
      bottomNavigationBar: BottomNavigationBar(onTap: (newIndex) => setState(() => _index = newIndex), currentIndex: _index, items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.blueAccent, size: 30.0), //icon
            title: Text('Home')), //
        BottomNavigationBarItem(
            icon: Icon(Icons.format_align_center, color: Colors.blueAccent, size: 30.0), //icon
            title: Text('Resgister')), //
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart, color: Colors.orangeAccent, size: 30.0), //icon
            title: Text('Carrito de compras')), //
      ]), // bottom
    ); // fin de scaffold
  } // fin de widget
} // fin de class
