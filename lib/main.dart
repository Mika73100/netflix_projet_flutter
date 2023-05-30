import 'package:flutter/material.dart';
import 'package:netflix_projet_flutter/ui/screens/home_screen.dart';//j'importe ma page dans le main.


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key?key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //ici je cache la bannière par default
      title: 'Not Netflix',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      
      home: const HomeScreen(),
    );
  }
}

