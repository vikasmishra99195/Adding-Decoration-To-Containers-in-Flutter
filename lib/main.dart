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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Decoration Practice'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Container(
            color: Colors.red,
            height: 200,
            width: 200,
            child: Center(
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  // borderRadius: BorderRadius.circular(20)
                  // borderRadius: BorderRadius.only(
                  //   topLeft: Radius.elliptical(30, 50),
                  //   topRight: Radius.elliptical(30, 50),
                  // ),
                  border: Border.all(
                    width: 4,
                    color: Colors.white,
                    style: BorderStyle.solid,
                  ),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.yellow,
                    child: Center(
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        color: Colors.purple,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
