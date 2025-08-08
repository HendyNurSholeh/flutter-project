import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const FirstScreen(),// Panggil FirstScreen di sini
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aksel Application'),
        backgroundColor: Colors.purple,
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, decoration: TextDecoration.underline),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ),
      body: Container(
        constraints: BoxConstraints.expand(
          height: Theme.of(context).textTheme.headlineMedium!.fontSize! * 1.1 + 200.0,
        ),
        padding: const EdgeInsets.all(8.0),
        color: Colors.blue[600],
        alignment: Alignment.center,
        transform: Matrix4.rotationZ(0.1),
        child: Text('Love uu Sayangg Hendy',
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(color: Colors.white)),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.home,
          color: Colors.purple,
          size: 30.0,
        ),
        onPressed: (){},
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(height: 50.0),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}