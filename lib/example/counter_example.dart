import 'package:flutter/material.dart';
import 'package:projects/provider/counter_provider.dart';
import 'package:provider/provider.dart';

class ClassExample extends StatefulWidget {
  const ClassExample({super.key, required String title});

  @override
  State<ClassExample> createState() => _ClassExampleState();
}

class _ClassExampleState extends State<ClassExample> {
  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Subscribe'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              countProvider.count.toString(),
              style: TextStyle(
                fontSize: 50,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              countProvider.setCountDown();
            },
            child: Text("Decrease"),
          ),
          ElevatedButton(
            onPressed: () {
              countProvider.setCount();
            },
            child: Text("Increase"),
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     countProvider.setCount();
      //   },
      //   child: Icon(Icons.abc),
      // ),
    );
  }
}
