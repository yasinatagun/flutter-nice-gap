import 'package:flutter/material.dart';
import 'package:flutter_nice_gap/flutter_nice_gap.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Nice Gap Demo',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue), useMaterial3: true),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Nice Gap Demo'), backgroundColor: Theme.of(context).colorScheme.inversePrimary),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Horizontal Gap Example:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Gap(10),
            Row(children: [_buildBox('Box 1', Colors.blue), Gap(20), _buildBox('Box 2', Colors.green), Gap(20), _buildBox('Box 3', Colors.orange)]),
            Gap(30),
            const Text('Vertical Gap Example:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Gap(10),
            _buildBox('Box 1', Colors.purple),
            Gap(20),
            _buildBox('Box 2', Colors.red),
            Gap(20),
            _buildBox('Box 3', Colors.teal),
          ],
        ),
      ),
    );
  }

  Widget _buildBox(String text, Color color) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(8)),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
