import 'package:flutter/material.dart';

void main() {
  runApp(Container(
    child: Center(
      child: const Text('Opa estou testando um componente',
          textDirection: TextDirection.ltr,
          style: TextStyle(
              color: Color.fromARGB(255, 3, 123, 192), fontSize: 100)),
    ),
  ));
}
