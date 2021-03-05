import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const DARK = Color.fromARGB(82, 82, 82, 1);
  static const DEFAULT = Colors.blueGrey;
  static const OPERATION = Color.fromARGB(255, 240, 120, 50);

  final String text;
  final bool big;
  final Color color;
  final void Function(String) cb;

  Button({
    @required this.text,
    this.big = false,
    this.color = DEFAULT,
    @required this.cb
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(this.color),
        ),
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white, fontSize: 32, fontWeight: FontWeight.w200),
        ),
        onPressed: () => cb(text),
      ),
    );
  }
}
