import 'package:flutter/cupertino.dart';
import 'package:projeto_1/services/prefs_service.dart';

class LoginController {
  String? _login;
  setLogin(String value) => _login = value;
  String? _pass;
  setPass(String value) => _pass = value;
  ValueNotifier<bool> inLoader = ValueNotifier(false);

  Future<bool> auth() async {
    inLoader.value = true;
    await Future.delayed(Duration(seconds: 2));
    inLoader.value = false;
    if (_login == 'teste@teste' && _pass == 'teste') {
      PrefsService.save(_login!);
      return true;
    }
    return false;
  }
}
