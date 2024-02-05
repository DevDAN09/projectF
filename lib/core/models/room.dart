import 'package:projectf/core/models/player.dart';

class Room {
  late final String _roomId;
  static int _nextMemberId = 0;
  late Map<int, Player> _memberNames;

  Room({required roomId, required player}){
    _memberNames = [] as Map<int, Player>;
    _roomId = roomId;
    addMember(player);
    _nextMemberId += 1;
  }

  // 외부에서 수정 불가능한 룸 명단 getter
  Map<int, String> get players => Map.unmodifiable(_memberNames);

  void addMember(Player player) {
    _memberNames[_nextMemberId] = player.nickname as Player;
  }

  factory Room.fromJsonCreateRoom(Map<String, dynamic> json) {
    return Room(
      roomId: json['roomId'],
      player: Player(nickName: json['nickName'],roomId: json['roomId']),
    );
  }
}