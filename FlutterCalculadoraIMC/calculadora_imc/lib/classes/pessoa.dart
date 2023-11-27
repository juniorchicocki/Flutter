import 'dart:ffi';

class Pessoa {
  String _nome = "";
  double _peso = 0.0;
  double _altura = 0.0;

  String getNome() {
    return _nome;
  }

  void setNome(String value) {
    _nome = value;
  }

  double getPeso() {
    return _peso;
  }

  void setPeso(double value) {
    _peso = value;
  }

  double getAltura() {
    return _altura;
  }

  void setAltura(double value) {
    _altura = value;
  }
}
