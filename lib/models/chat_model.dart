import 'package:whatsapp/models/base_model.dart';

class ChatModel extends BaseModel {
  int? id;
  final String _name = '';
  final String _img = '';
  final bool isGroup = false;
  final String time = '';
  String status = '';
  String get name => _name;

  final String _lastMessage = '';
  String get lastMessage => _lastMessage;
}
