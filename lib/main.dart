import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'buttonResposta.dart';
import 'jogo.dart';

void main() => runApp(Jogoo());

class Jogoo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: JogoPage(),
          ),
        ),
      ),
    );
  }
}

class JogoPage extends StatefulWidget {
  JogoPage({Key? key}) : super(key: key);

  @override
  _JogoPageState createState() => _JogoPageState();
}

class _JogoPageState extends State<JogoPage> {
  Jogo jogo = Jogo();

  List<Color> buttonsListColors = [Colors.green, Colors.red];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Center(child: Text(jogo.getDescricaoCena())),
                flex: 5,
              ),
              for (int i = 0; i < jogo.lengthAcoesDisponiveis(); i++)
                Expanded(
                  child: ButtonResposta(
                      texto: jogo.getAcaoDisponivel(i),
                      cor: buttonsListColors[i],
                      cb: () {
                        jogo.setCenaAtual(jogo.getProximaCena(i));
                        setState(() {});
                      }),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
