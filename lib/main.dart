import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Screens/Homepage.dart';
import 'Screens/SecondScreen.dart';
import 'Providers/Counter_Provider.dart';
import 'Providers/shoping_Provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => counter()),
      ChangeNotifierProvider(create: (_) => ShopingCard())
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/second': (context) => SecondScreen()
      },
    );
  }
}
