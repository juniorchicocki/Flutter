import 'package:calculadora_imc/calculadora_imc.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(calcularImc(70, 1.70), "Saudável");
  });
}
