import 'package:flutter/material.dart';
import 'package:projectf/routes/routerConfig.dart';
import 'package:projectf/core/networks/http/room/room_api.dart';
import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  String baseUrl = dotenv.get("baseUrl");
  print("Test Url: $baseUrl");
  RoomApi.instance.setBaseUrl(baseUrl);


  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        title: 'Firsty',
        routerConfig: routerConfig,
    );
  }
}