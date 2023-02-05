import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => MainPage(),
      '/category': (context) => Category()
    },
  ));
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                child: Row(
                  children: [
                    Text('geumho 3 street', style: TextStyle(color: Colors.black),),
                    Icon(Icons.keyboard_arrow_down, color: Colors.black)
                  ]
                )
              ),
              SizedBox(
                child: Row(
                  children: [
                    Icon(Icons.search_rounded, color: Colors.black),
                    SizedBox(width: 20,),
                    IconButton(
                        icon : new Icon(Icons.menu),
                        color: Colors.black,
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Category()));
                        }),
                    SizedBox(width: 20,),
                    Icon(Icons.notifications, color: Colors.black)
                  ],
                )
              ),
            ]
          ),
        ),
        body: ListView(
          children: [
            ShopItem(),
            ShopItem(),
            ShopItem(),
            ShopItem(),
            ShopItem(),
            ShopItem(),
            ShopItem(),
          ],
        )
      );
  }
}

class ShopItem extends StatelessWidget {
  const ShopItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        height: 150,
        child: Row(
          children: [
            Flexible(flex: 1,
              child: Container(
                padding: EdgeInsets.all(10),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset("assets/dog.png")
                ),
              ),
            ),
            Flexible(flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(flex: 2,
                    child: Container(
                      child: Text(style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                          'Canon DSLR 100D(short lenz charger 16 included)'),
                    ),
                  ),
                  Flexible(flex: 1,
                    child: Container(
                        child: Text('성동구 행당동 끌올 10분전',style: TextStyle(color: Colors.blueGrey),)),
                  ),
                  Flexible(flex: 1,
                    child: Container(
                        child: Text('210,000원')
                    ),
                  ),
                  Flexible(flex: 1,
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.favorite),
                        Text('3')
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        )
    );
  }
}

class Category extends StatelessWidget {
  const Category({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        child: Row(
                            children: [
                              Icon(Icons.arrow_back, ),
                              Text('geumho 3 street', style: TextStyle(color: Colors.black),),
                              Icon(Icons.keyboard_arrow_down, color: Colors.black)
                            ]
                        )
                    ),
                    SizedBox(
                        child: Row(
                          children: [
                            IconButton(
                                icon : new Icon(Icons.arrow_back),
                                color: Colors.black,
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage()));
                            }),
                            SizedBox(width: 20,),
                            IconButton(
                                icon : new Icon(Icons.menu),
                                color: Colors.black,
                                onPressed: () {
                                  Navigator.pushNamed(context, '/category');
                                }),
                            SizedBox(width: 20,),
                            Icon(Icons.notifications, color: Colors.black)
                          ],
                        )
                    ),
                  ]
              ),
            ),
            body: ListView(
              children: [
                ShopItem(),
              ],
            )
        );
  }
}