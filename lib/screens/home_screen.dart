import 'package:flutter/material.dart';
import 'package:mi_primera_app/screens/games_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff161B22),
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                "assets/images/welcome.png",
                width: double.infinity,
              ),
              Positioned(
                bottom: 0,
                child: Image.asset(
                  "assets/images/logo-horizontal.png",
                  height: 100,
                  width: 430,
                ),
              )
            ],
          ),
          SizedBox(height: 20),
          const Text(
            "Bienvenid@ a la mejor aplicación sobre juegos, enterate de todos los juegos que estan haciendo tendencia en el mundo y diviertete",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          SizedBox(height: 50),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return GameScreen();
              }));
            },
            child: Container(
              height: 70,
              width: 300,
              color: Colors.red,
              child: Row(
                children: [
                  SizedBox(width: 15),
                  Icon(
                    Icons.login,
                    size: 40,
                    color: Colors.white,
                  ),
                  SizedBox(width: 30),
                  Text(
                    "Iniciar Sesion con Google",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
