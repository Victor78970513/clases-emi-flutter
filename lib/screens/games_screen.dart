import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mi_primera_app/models/game_model.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  String misJuegos = "";

  void traerJuegos() async {
    // PRIMER COMMIT PRUEBA
    // SEGUNDO COMMIT PRUEBA2

    final respuesta =
        await http.get(Uri.parse("https://www.freetogame.com/api/games"));
    // print(respuesta.body);

    misJuegos = respuesta.body;
    print(misJuegos);

    // misJuegos.addAll(Game.fromRawJson(respuesta.body));
    // misJuegos = Game.fromRawJson(respuesta.body);
  }

  @override
  void initState() {
    traerJuegos();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        CarouselSlider(
          items: [
            Image.asset("assets/images/welcome.png"),
            Image.asset("assets/images/card-game.png"),
          ],
          options: CarouselOptions(
            autoPlay: true,
            viewportFraction: 1,
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  height: 200,
                  width: 400,
                  color: Colors.red,
                  child: Image.asset("assets/images/pacman.gif"),
                ),
              );
            },
          ),
        )
      ],
    ));
  }
}
