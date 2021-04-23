import 'package:flutter/material.dart';

import '../core_shelf.dart';

class UserProvider extends ChangeNotifier {
  late UserModel _user;
  UserModel get user => _user;
  void login(user) {
    _user = user;
    notifyListeners();
  }
}
