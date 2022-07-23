import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:myapp/Providers/Counter_Provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Counter"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('${context.watch<counter>().count}'),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/second');
                },
                child: Text('Next Screen'),
              ),
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
              onPressed: () => context.read<counter>().increment(),
              child: Icon(Icons.add),
              tooltip: 'Increament',
            ),
            FloatingActionButton(
              onPressed: () => context.read<counter>().Zero(),
              child: Text('0'),
              tooltip: 'Set zero ',
            ),
            FloatingActionButton(
              onPressed: () => context.read<counter>().decreament(),
              child: Icon(Icons.minimize),
              tooltip: 'Increament',
            ),
          ],
        ),
      ),
    );
  }
}
