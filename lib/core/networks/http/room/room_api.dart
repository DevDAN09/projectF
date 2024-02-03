import 'package:dio/dio.dart';
import 'package:projectf/core/models/player.dart';
import 'package:projectf/core/models/room.dart';

class RoomApi {
  static final RoomApi _instance = RoomApi._internal();

  Dio _dio;

  // Private 생성자
  RoomApi._internal() : _dio = Dio() {
    // 여기에서 Dio의 기본 설정을 구성할 수 있습니다.
    _dio.options.baseUrl = "https://localhost:8080";
    _dio.options.connectTimeout = 5000;
    _dio.options.receiveTimeout = 3000;
    // 필요한 경우 기타 설정을 추가합니다.
  }

  // 싱글톤 인스턴스에 대한 공개적으로 접근 가능한 getter
  static RoomApi get instance => _instance;

  // Room 관련 API 메서드들
  factory postCreateRoom(Player request) async {
    try {
      Response response = await _dio.post('/Room/CreateRoom', data: request.toJsonCreateRoom());
      return Room.fromJsonCreateRoom(response.data);
    } catch (e) {
      // 에러 처리 로직
      throw e;
    }
  }

  void postParticipateRoom(Player request) async {
    try {
      Response response = await _dio.post('/Room/ParticipateRoom', data: request.toJsonParticipateRoom());
    } catch (e) {
      // 에러 처리 로직
      throw e;
    }
  }


}
