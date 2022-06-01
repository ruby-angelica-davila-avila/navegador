import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Navigacion Basica',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Primera pagina'),
        centerTitle: true,
        backgroundColor: Colors.black,
        actions: [
          Icon(Icons.ac_unit),
          Icon(Icons.account_circle_outlined)
        ],
      ),
      body: Center(
        child: ElevatedButton(
          //style: style,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.redAccent),
          ),

          child: const Text('Abrir segunda pagina'),

          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondRoute()),
            );
          },
        ), //Elevatedbutton
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Segunda pagina"),
        centerTitle: true,
        backgroundColor: Colors.black87,
        actions: [
          Icon(Icons.add_a_photo),
          Icon(Icons.account_circle_outlined)
        ],
      ),
      body: Center(
        child: ElevatedButton(
          //style: style,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.redAccent),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Abrir primera pagina'),
        ), //raisebutton
      ),
    );
  }
}
