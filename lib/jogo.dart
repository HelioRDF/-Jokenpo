import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                Image.asset("images/padrao.png")
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
                    Image.asset(
                      "images/pedra.png",
                      height: 90,
                    ),
                    Image.asset("images/papel.png", height: 90),
                    Image.asset("images/tesoura.png", height: 90)
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(30),
                ),
                Text("Resultado:"),
                Padding(
                  padding: EdgeInsets.all(10),
                ),
                Text("Aguardando Jogada!"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
