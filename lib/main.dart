import 'package:flutter/material.dart';

void main() => runApp(const intern_app());

class intern_app extends StatelessWidget {
  const intern_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "intern_app",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 19, 216, 226),
        title: Image.asset(
          "assets/images/logo1.png",
          height: 48.0,
          width: 160.0,
        ),
      ),
      body: Container(
          height: 550,
          width: 390,
          color: const Color.fromARGB(95, 151, 233, 145),
          padding: const EdgeInsets.all(30),
          child: const Column(
            children: [
              Text(
                'Welcome to Eduons',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Students for Little Education from.',
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
              Text(
                'Our agency can only be as strong as our people & because of team have designed game changing products.',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox()
            ],
          )),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 249, 247, 247),
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            ListTile(
              title: const Text('Home 1'),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
