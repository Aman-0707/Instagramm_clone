import 'package:flutter/widgets.dart';

import '../models/usermodel.dart';
import '../resources/auth_methods.dart';

class UserProvider with ChangeNotifier {
  User? _user;

  AuthMethod get _authMethod => AuthMethod();

  User? get getUser => _user;

  Future<void> refreshUser() async {
    User user = (await _authMethod.getUserDetails()) as User;
    _user = user;
    notifyListeners();
  }
}
