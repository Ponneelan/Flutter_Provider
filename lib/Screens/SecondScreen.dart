import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:myapp/Providers/Counter_Provider.dart';
import 'package:myapp/Providers/Counter_Provider.dart';
import 'package:myapp/Providers/shoping_Provider.dart';

class SecondScreen extends StatefulWidget {
  SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Shoping Cart ${context.watch<counter>().count}'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("${context.watch<ShopingCard>().lenght}"),
            Text("${context.watch<ShopingCard>().cart}"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<ShopingCard>().additem(),
        child: Icon(Icons.add),
      ),
    ));
  }
}
