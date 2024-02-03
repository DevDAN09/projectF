import 'package:projectf/core/models/room.dart';

class Player {
  final String _nickName;
  final String _roomId;

  Player({required this._nickName, required this._roomId});

  String get nickname => _nickName;
  String get roomId => _roomId;

  Map<String, dynamic> toJsonPostCreateRoom() {
    return {
      'nickName': this._nickName,
      'roomId': this roomId,
    };
  }

  Map<String, dynamic> toJsonPostParticipateRoom(){
    return{
      'nickName': this._nickName,
      "roomId": this._roomId,
    }
  }
}