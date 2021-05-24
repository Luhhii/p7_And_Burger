import 'package:flutter/material.dart';
import 'package:luhi/pages/first_pages.dart';
import 'package:luhi/pages/second_pages.dart';
import 'package:luhi/pages/third_pages.dart';

void main() => runApp(LuhiApp());

class LuhiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Burger Luhi',
      home: PaginaInicio(),
    );
  }
} //Fin LuhiApp

class PaginaInicio extends StatefulWidget {
  @override
  _PaginaInicioState createState() => _PaginaInicioState();
}

class _PaginaInicioState extends State<PaginaInicio> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; //Variable size
    Widget child;
    switch (_index) {
      case 0:
        child = FlutterLogo();
        break;
      case 1:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new SecondPage());
        break;
      case 2:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new ThirdPage());
        break;
    } //Fin Switch

    return Scaffold(
      body: SizedBox.expand(child: child),
      bottomNavigationBar: BottomNavigationBar(onTap: (newIndex) => setState(() => _index = newIndex), currentIndex: _index, items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.blueAccent, size: 30.0), //icon
            title: Text('Home')), //
        BottomNavigationBarItem(
            icon: Icon(Icons.format_align_center, color: Colors.blueAccent, size: 30.0), //icon
            title: Text('Resgister')), //
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart, color: Colors.orangeAccent, size: 30.0), //icon
            title: Text('Home')), //
      ]), // bottom
    ); //Fin Scaffold
  } //Fin Widget
} //Fin class _PaginaInicio
