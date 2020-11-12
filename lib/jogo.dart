import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _imagem = "images/padrao.png";

  String _ganhou = "";
  String _empatou = "";
  String _perdeu = "";

  void resultado(String jogada, String jogadaApp) {
     _ganhou = "";
     _empatou = "";
     _perdeu = "";
    String _resultadoAux;
    if (jogada == jogadaApp) {
      _resultadoAux = "Empatado!";
    } else if ((jogada == "pedra" && jogadaApp == "tesoura") ||
        (jogada == "papel" && jogadaApp == "pedra") ||
        (jogada == "tesoura" && jogadaApp == "papel")) {
      _resultadoAux = "Vitória!";
    } else {
      _resultadoAux = "Derrota!";
    }
    setState(() {
      switch (_resultadoAux) {
        case "Vitória!":
          _ganhou = "Vitória!";
          break;
        case "Empatado!":
          _empatou = "Empatado!";
          break;
        case "Derrota!":
          _perdeu = "Derrota!";
          break;
      }
    });
  }

  void selecaoUsuario(String jogada) {
    String jogadaApp = selecaoApp();
    resultado(jogada, jogadaApp);
    print("minha jogada: " + jogada);
    print("jogada do App: " + jogadaApp);
  }

  String selecaoApp() {
    Random num = new Random();
    List<String> jogadas = ["pedra", "papel", "tesoura"];
    String resultado = jogadas[num.nextInt(jogadas.length)];
    setState(() {
      _imagem = "images/" + resultado + ".png";
    });
    return resultado;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("JokenPô"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //  crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Escolha do App:",
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                ),
                Image.asset(_imagem),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                ),
                Text("Escolha:"),
                Padding(
                  padding: EdgeInsets.all(10),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      child: Image.asset("images/pedra.png", height: 90),
                      onTap: () => selecaoUsuario("pedra"),
                    ),
                    GestureDetector(
                      child: Image.asset("images/papel.png", height: 90),
                      onTap: () => selecaoUsuario("papel"),
                    ),
                    GestureDetector(
                      child: Image.asset("images/tesoura.png", height: 90),
                      onTap: () => selecaoUsuario("tesoura"),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(30),
                ),

                Text(_ganhou, style: TextStyle(color: Colors.greenAccent, fontSize: 30),
                ),
                Text(_empatou,style: TextStyle(color: Colors.orange, fontSize: 30),
                ),
                Text(_perdeu,style: TextStyle(color: Colors.red, fontSize: 30),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
