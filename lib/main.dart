import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trello_demo/board/view/board_screen.dart';
import 'package:trello_demo/card/view_model/file_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => FileProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: BoardScreen(),
      ),
    );
  }
}

