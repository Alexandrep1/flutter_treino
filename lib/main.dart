import 'package:flutter/material.dart';
import 'package:flutter_treino/secondPage.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen(),
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
        title: Text("menu page", style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Text("body of app"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text("Menu 2"),
            ),
            ListTile(title: Text("Home")),
            ListTile(title: Text("Produtos")),
            ListTile(title: Text("Serviços")),
            ListTile(title: Text("Contato")),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProfileScreen()),
          );
        },
        child: Icon(Icons.account_box, size: 60, color: Colors.black),
      ),
      bottomNavigationBar: const rodape(),
    );
  }
}

class rodape extends StatelessWidget {
  const rodape({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.purple,
      child: Center(
        child: Text(
          "rodapé",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

void main(){
  runApp(MyWidget());
}

dasdas