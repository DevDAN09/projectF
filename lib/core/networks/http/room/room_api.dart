import 'package:dio/dio.dart';
import 'package:projectf/core/models/player.dart';
import 'package:projectf/core/models/room.dart';

class RoomApi {
  static final RoomApi _instance = RoomApi._internal();
  late Dio _dio; // Dio 인스턴스 선언
  RoomApi._internal() {
    _dio = Dio();
  }

  static RoomApi get instance => _instance;

  // Dio 인스턴스에 대한 getter를 제공합니다.
  Dio get dio => _dio;

  void setBaseUrl(String url) {
    _dio.options.baseUrl = url;
  }

  // Room 관련 API 메서드들
  Future<Room> postCreateRoom(Player request) async {
    print("서버로 postCreateRoom");
    try {
      Response response = await dio.post('/Room/CreateRoom', data: request.toJsonPostCreateRoom());
      print("Response Data : $response");
      return Room.fromJsonCreateRoom(response.data);
    } catch (e) {
      // 에러 처리 로직
      throw e;
    }
  }

  void postParticipateRoom(Player request) async {
    try {
      Response response = await dio.post('/Room/ParticipateRoom', data: request.toJsonPostParticipateRoom());
      // 성공적으로 참가 처리됨
    } catch (e) {
      // 에러 처리 로직
      throw e;
    }
  }

  Future<void> getParticipation(String roomId) async {
    try {
      Response response = await dio.get('/Player/GetParticipation/$roomId');
      print(response.data);
      // 참가자의 정보를 받아옴
    } catch (e) {
      // 에러 처리 로직
      throw e;
    }
  }
}
