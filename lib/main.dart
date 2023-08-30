import 'package:flutter/material.dart';
import 'Pessoa.dart';

void main() {
  runApp(const Home());
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController nomeController = TextEditingController();
  TextEditingController pesoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();

  String IMC = '';
  String Estado = '';

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
            const SizedBox(height: 30),
            SizedBox(
              width: 200,
              child: TextField(
                controller: nomeController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nome',
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 200,
              child: TextField(
                controller: pesoController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Peso',
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 200,
              child: TextField(
                controller: alturaController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
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
                  double altura = double.parse(alturaController.text);
                  double peso = double.parse(pesoController.text);

                  Pessoa pessoa = Pessoa(
                    nomeController.text,
                    peso,
                    altura,
                  );

                  double imc = pessoa.calimc();
                  String estadoNutricional = pessoa.estadoNutricional();

                  setState(() {
                    IMC = "IMC: ${imc.toStringAsFixed(2)}";
                  });
                  setState(() {
                    Estado =
                        //   "IMC: ${imc.toStringAsFixed(2)}\nEstado Nutricional: $estadoNutricional";
                        "\nEstado Nutricional: $estadoNutricional";
                  });
                },
                child: const Text(
                  'Calcular',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Text(
              IMC,
              style: const TextStyle(color: Colors.orange, fontSize: 20),
            ),
            Text(
              Estado,
              style: const TextStyle(color: Colors.orange, fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
