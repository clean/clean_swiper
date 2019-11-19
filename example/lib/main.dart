import 'package:flutter/material.dart';
import 'package:clean_swiper/clean_swiper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clean Swiper Demo',
      home: ExamplePage()
    );
  }
}

class ExamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clean Swiper Example')
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              height: 200,
              child: CleanSwiper(
                viewportFraction: 0.9,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://images.pexels.com/photos/257840/pexels-photo-257840.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                        fit: BoxFit.cover,
                      )
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://images.pexels.com/photos/33109/fall-autumn-red-season.jpg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                        fit: BoxFit.cover,
                      )
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://images.pexels.com/photos/814499/pexels-photo-814499.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                        fit: BoxFit.cover,
                      )
                    ),
                  ),
                ],
              ),
          ),
          Container(
              height: 250,
              child: CleanSwiper(
                viewportFraction: 0.9,
                children: <Widget>[
                  Card(
                    color: Colors.yellow,
                    child: Center(child: Text('Card 1'))
                  ),
                  Card(
                    color: Colors.pink,
                    child: Center(child: Text('Card 2'))
                  ),
                  Card(
                    color: Colors.teal,
                    child: Center(child: Text('Card 3'))
                  ),
                ],
              ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 50),
            height: 30,
            color: Colors.white38,
            child: CleanSwiper(
              viewportFraction: 1,
              children: <Widget>[
                Text('Text 1', textAlign: TextAlign.center,),
                Text('Text 2', textAlign: TextAlign.center,),
                Text('Text 3', textAlign: TextAlign.center,),
              ],
            )
          )
        ],
      )
      
    );
  }
}