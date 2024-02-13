import 'package:projectf/core/models/room.dart';

class Player {
  final String _nickName;
  final String _roomId;

  Player({required nickName, required roomId}) : _nickName = nickName, _roomId = roomId ;

  String get nickname => _nickName;
  String get roomId => _roomId;

  Map<String, dynamic> toJsonPostCreateRoom() {
    print("post to $nickname");
    return {
      'nickName': this._nickName,
      'roomId': this._roomId,
    };
  }

  Map<String, dynamic> toJsonPostParticipateRoom(){
    return {
      'nickName': this._nickName,
      "roomId": this._roomId,
    };
  }

  toJsonParticipateRoom() {}
}