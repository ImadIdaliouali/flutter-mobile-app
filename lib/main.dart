import 'package:flutter/material.dart';
import 'screens/create_content_screen.dart';
import 'screens/content_list_screen.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(DorossAIApp());
}

class DorossAIApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DorossAI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/create': (context) => CreateContentScreen(),
        '/list': (context) => ContentListScreen(),
      },
    );
  }
}