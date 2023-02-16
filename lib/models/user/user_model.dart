import 'package:whatsapp/models/base_model.dart';

class UserModel extends BaseModel {
  String _name = '';
  String _img = '';
  String _userDescription = 'Hey there! I am using WhatsApp';
  final List<String> _userMessages = [];

  String get name => _name;
  String get img => _img;
  String get userDescription => _userDescription;
  List<String> get userMessages => _userMessages;

  set img(String newImg) {
    _img = newImg;
    notifyListeners();
  }

  set userDescription(String newDescription) {
    _userDescription = newDescription;
    notifyListeners();
  }
}
