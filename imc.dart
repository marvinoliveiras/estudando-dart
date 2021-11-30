import 'dart:io';

void main() {
  setIMC();
}

setIMC() {
  var height = getInput("Digite sua altura:");
  validateValue(height);
  var weight = getInput("Digite seu Peso:");
  validateValue(weight);
  var IMC = calcIMC(height, weight);
  printIMC(IMC);
}

calcIMC(height, weight) {
  return weight / (height * height);
}

getInput(String message) {
  print(message);
  var textInput = stdin.readLineSync();
  if (textInput != null) {
    return double.tryParse(textInput);
  }
  return null;
}

validateValue(double? value) {
  if (value == null) {
    print("Valor digitado é inválido!");
    return exit(0);
  }
}

printIMC(IMC) {
  print("seu IMC é: " + IMC.toString());
}
