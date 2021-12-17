import 'package:flutter/material.dart';

class ButtonResposta extends StatelessWidget {
  const ButtonResposta(
      {Key? key, required this.texto, required this.cor, required this.cb})
      : super(key: key);
  final String texto;
  final Color cor;
  final Function cb;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: TextButton(
        child: Text(texto),
        style: TextButton.styleFrom(
          backgroundColor: cor,
          primary: Colors.white,
        ),
        onPressed: () {
          cb();
        },
      ),
    );
  }
}
