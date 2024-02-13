import 'package:flutter/material.dart';
import 'package:projectf/routes/routerConfig.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
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