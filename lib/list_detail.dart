import 'package:flutter/material.dart';
import 'package:practica2_ui_fruitapp/counter.dart';
import 'package:practica2_ui_fruitapp/fruits.dart';

// ignore: must_be_immutable
class ListDetail extends StatefulWidget {
  final Fruit fruit;
  ListDetail(this.fruit);

  @override
  State<ListDetail> createState() => _ListDetailState(fruit);
}

class _ListDetailState extends State<ListDetail> {
  bool _isFavorited = true;
  final Fruit fruit;
  _ListDetailState(this.fruit);

  void _toggleFavorite() {
    _isFavorited = !_isFavorited;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(fruit.title!),
          backgroundColor: Colors.amber[200],
        ),
        backgroundColor: Color(fruit.color!),
        body: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Image.asset(fruit.image!),
                SizedBox(
                  height: 50.0,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(50.0),
                        topRight: const Radius.circular(50.0),
                      )),
                  height: 600,
                  width: 500,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            fruit.title!,
                            style: TextStyle(
                                fontSize: 30.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text('1 each'),
                          SizedBox(
                            height: 20.0,
                          ),
                          CounterDesign(),
                          SizedBox(
                            height: 30.0,
                          ),
                          Text(
                            'Product Description',
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            fruit.description!,
                            style:
                                TextStyle(letterSpacing: 2.0, fontSize: 15.0),
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Row(
                            children: <Widget>[
                              ButtonTheme(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                  side: BorderSide(color: Colors.amber),
                                ),
                                height: 70.0,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    textStyle: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                        fontStyle: FontStyle.normal),
                                  ),
                                  child: IconButton(
                                      icon: _isFavorited
                                          ? Icon(
                                              Icons.favorite_border,
                                              color: Colors.pink,
                                            )
                                          : Icon(
                                              Icons.favorite,
                                              color: Colors.pink,
                                            ),
                                      onPressed: () {
                                        setState(() {
                                          _toggleFavorite();
                                        });
                                      }),
                                  onPressed: _toggleFavorite,
                                ),
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              ButtonTheme(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)),
                                height: 200.0,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                  
                                    backgroundColor: Colors.blue,
                                    textStyle: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontStyle: FontStyle.normal),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'Add to cart',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
