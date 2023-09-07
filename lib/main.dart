import 'package:flutter/material.dart';
import 'package:practica2_ui_fruitapp/fruits.dart';
import 'package:practica2_ui_fruitapp/list_detail.dart';

void main() {
  runApp(FirstScreen());
}

class FirstScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FirstScreen();
  }
}

class _FirstScreen extends State<FirstScreen> {
  bool _isFavorited = true;

  void _toggleFavorite() {
    setState(() {
      _isFavorited = !_isFavorited;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.blue,
          leading: Row(
            children: <Widget>[
              SizedBox(
                width: 5.0,
              ),
              IconButton(
                color: Colors.white,
                icon: const Icon(
                  Icons.arrow_back,
                ),
                onPressed: () {},
              ),
            ],
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            SizedBox(
              width: 20.0,
            ),
          ],
        ),
        backgroundColor: Colors.white,
        body: ListView.builder(
          itemCount: fruits.length,
          itemBuilder: (context, index) {
            final fruit = fruits[index];
            Color c = Color(fruit.color!);
            return Card(
              child: ListTile(
                title: Text(fruit.title!,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    )),
                subtitle: Text(fruit.subtitle!),
                leading: Image.asset(fruit.image!),
                trailing: Icon(Icons.arrow_forward_rounded),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context)=>  ListDetail(fruit)));
                },
              ),
              color: c,
            );
          },
        ),
      ),
    );
  }
}
