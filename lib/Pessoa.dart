class Pessoa {
  String _nome;
  double _peso;
  double _altura;

  Pessoa(
    this._nome,
    this._peso,
    this._altura,
  );

  String get nome => _nome;
  set nome(String novoNome) => _nome = novoNome;

  double get peso => _peso;
  set peso(double novoPeso) => _peso = novoPeso;

  double get altura => _altura;
  set altura(double novaAltura) => _altura = novaAltura;

  // String get imc => _imc;
  // set imc(String novoImc) => _imc = novoImc;

//calculo do IMC
  double calimc() {
    return _peso / (_altura * _altura);
  }

//função do onpressed
  estadoNutricional() {
    double imc = calimc();
    if (imc < 16) {
      return "Magreza Grave";
    } else if (imc < 17) {
      return "Magreza Moderada";
    } else if (imc < 18.5) {
      return "Magreza Leve";
    } else if (imc < 25) {
      return "Saudável";
    } else if (imc < 30) {
      return "Sobrepeso";
    } else if (imc < 35) {
      return "Obesidade Grau I";
    } else if (imc < 40) {
      return "Obesidade Grau II (SEVERA)";
    } else {
      return "Obesidade Grau III (MÓRBIDA)";
    }
  }
}
