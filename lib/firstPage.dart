import 'package:flutter/material.dart';
import 'package:flutter_treino/secondPage.dart';

final Color letrasMenuCor = Colors.black;
final Color backMenuCor = Colors.brown.shade200;

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Screen(),
    );
  }
}

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "menu page",
        ),
        centerTitle: true,
        backgroundColor: backMenuCor,
      ),
      body: const Center(
        child: Text("corpo do projeto"),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: const Icon(Icons.home),
              color: backMenuCor,
              onPressed: () {
                //botão da home
              },
            ),
            IconButton(
              icon: const Icon(Icons.settings),
              color: backMenuCor,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondPage()));
              },
            ),
            IconButton(
              icon: const Icon(Icons.graphic_eq),
              color: backMenuCor,
              onPressed: () {
                // botão do grafico
              },
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
              child: Text("menu  2"),
            ),
            ListTile(title: Text("Home")),
            Divider(),
            ListTile(title: Text("Contact")),
            Divider(),
            ListTile(title: Text("Overview")),
            Divider(),
            ListTile(title: Text("Configurations")),
            Divider(),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MyWidget());
}
