import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool toggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Animação"),
        ),
        body: Container(
            padding: const EdgeInsets.all(12),
            color: Colors.red,
            width: double.infinity,
            height: double.infinity,
            child: AnimatedAlign(
              alignment: toggle ? Alignment.bottomRight : Alignment.topCenter,
              duration: const Duration(seconds: 1),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    toggle = !toggle;
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  height: 60,
                  width: toggle ? 60 : 100,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: toggle
                        ? const BorderRadius.all(Radius.circular(45))
                        : const BorderRadius.all(Radius.circular(0)),
                  ),
                ),
              ),
            )));
  }
}
