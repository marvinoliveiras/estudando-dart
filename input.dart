import 'dart:io';

main() {
  print("Qual a sua idade?");
  var input = stdin.readLineSync();
  if (input != null) {
    var idade = int.parse(input);
    if (idade >= 18) {
      print("maior de idade");
    } else {
      print("menor de idade");
    }
  }
}
