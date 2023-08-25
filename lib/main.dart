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
          title: Text('Calculadora de IMC'),
          titleTextStyle: TextStyle(color: Colors.white),
        ),
        body: Column(
          children: [
            Image.asset('lib/assets/body.jpg'),
            Text('\nSeu Peso:', style: TextStyle(fontSize: 30),),
            TextField(),
  

            TextButton(
                child: Text("teste"),
                onPressed: () {
                  print("pressionado");
                })
            // Text('Item 1'),
            // Text('Item 2'),
            // Text('Novo Item'), // Novo widget que você quer adicionar
          ],
        ),
      ),
    );
  }
}

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 250,
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Password',
        ),
      ),
    );
  }

