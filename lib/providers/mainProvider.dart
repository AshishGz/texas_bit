import 'package:flutter/cupertino.dart';

class MainProvider with ChangeNotifier{
   late String _userLocal='en';

   String get userLocal => _userLocal;

   setUserLocal(String value) {
    _userLocal = value;
    notifyListeners();
  }
}