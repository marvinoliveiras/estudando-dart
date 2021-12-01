import 'package:objetos/src/animal.dart';

class Cachorro extends Animal {
  late String nome;
  Cachorro({required this.nome, barulho}) : super(barulho: barulho);
}
