import 'package:projectf/core/models/player.dart';

class Room {
  late final String _roomId;
  static int _nextMemberId = 0;
  late Map<int, Player> _memberNames;

  Room({required roomId, required player}) {
    _memberNames = {}; // Map 초기화 수정
    _roomId = roomId;
    addMember(player);
    _nextMemberId += 1;
  }

  // Map<int, String> 타입이 아닌 Map<int, Player> 타입으로 수정
  Map<int, Player> get players => Map.unmodifiable(_memberNames);

  void addMember(Player player) {
    _memberNames[_nextMemberId] = player; // player 객체 자체를 추가
  }

  factory Room.fromJsonCreateRoom(Map<String, dynamic> json) {
    return Room(
      roomId: json['roomId'],
      player: Player(nickName: json['nickName'],roomId: json['roomId']),
    );
  }
}