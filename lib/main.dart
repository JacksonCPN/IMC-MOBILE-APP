import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IMC',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          centerTitle: true,
          title: const Text('Calculadora de IMC'),
          titleTextStyle: const TextStyle(color: Colors.white),
        ),
        body: Column(
          children: [
            Image.asset('lib/assets/body.jpg'),
            const Text(
              '\nSeu Peso:\n',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              width: 200,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Peso',
                ),
              ),
            ),
            const Text(
              '\nSua Altura:\n',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              width: 200,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Altura',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                onPressed: () {
                  print("pressionado");
                },
                child: const Text(
                  "Calcular",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
