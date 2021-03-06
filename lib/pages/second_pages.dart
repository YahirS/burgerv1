import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ui.Size logicalSize = MediaQuery.of(context).size;
    final double _height = logicalSize.height;
    return Scaffold(
      //resizeToAvoidBottomPadding: false ,
      body: SafeArea(
          child: Container(
              width: double.infinity,
              height: double.infinity,
              //color:Colors.green,
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      child: Text(
                        'BURGER SANCHEZ',
                        style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 45.0, color: Colors.red),
                      ),
                    ), //fin container
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(2.0),
                          child: Stack(
                            children: <Widget>[
                              Align(
                                  child: new Image(
                                width: 250.0,
                                height: 150.0,
                                image: new AssetImage('assets/images/hamburguesas-1.jpg'),
                              ) // fin new
                                  ) //fin align
                            ], //fin widget
                          ), //fin stack
                        ), //fin
                        SizedBox(
                          height: 40,
                        ),
                        TextField(
                          decoration: InputDecoration(hintText: "Email", icon: Icon(Icons.email)), //imput
                        ), //fin tex
                        SizedBox(
                          height: 40,
                        ),
                        TextField(
                          decoration: InputDecoration(hintText: "password", icon: Icon(Icons.vpn_key)), //imput
                        ), //fin tex
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RaisedButton(
                              child: Text(
                                'login',
                              ),
                              color: Colors.blue,
                              // borderRadius: BorderRadius.circular(30.0),
                              splashColor: Colors.cyan,
                              animationDuration: Duration(seconds: 20),
                              padding: EdgeInsets.all(20.0),
                              colorBrightness: Brightness.light,
                              onPressed: () {},
                            ), //Fin Raised Button
                            SizedBox(
                              width: 30,
                            ),
                            RaisedButton(
                              child: Text(
                                'CANCELAR',
                              ),
                              color: Colors.blue,
                              // borderRadius: BorderRadius.circular(30.0),
                              splashColor: Colors.cyan,
                              animationDuration: Duration(seconds: 20),
                              padding: EdgeInsets.all(20.0),
                              colorBrightness: Brightness.light,
                              onPressed: () {},
                            ), //Fin Raised Button
                          ],
                        ),
                      ], //wid
                    ), // fin col
                  ], // fin de widget
                ), //fin colum
              )) // fin contaimer
          ), //fin de safeArea
    ); // fin scaffold
  } // widget
} // first page
