import 'package:projectf/core/models/player.dart';

class Room {
  final String _masterName;
  final String _roomId;
  Map<int, Player> _memberNames;

  Room({required this._masterName, required this._roomId, int playerId}){
    _memberNames = [];
    addMember(playerId, _masterName);
  }

  // 외부에서 수정 불가능한 룸 명단 getter
  Map<int, String> get players => Map.unmodifiable(_memberNames);

  void addMember(int memberId, String memberName) {
    _memberNames[memberId] = memberName;
  }

  factory Room.fromJsonCreateRoom(Map<String, dynamic> json) {
    return Room(
      _roomId: json['roomId'],
      playerId: json['playerId'],
      _masterName: json['nickName'],
    );
  }
}