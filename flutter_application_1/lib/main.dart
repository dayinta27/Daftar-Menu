import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daftar Menu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Chicken Mushroom'),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              leading: Image.asset('images/nasigoreng.jpg'),
              title: Text('Nasi Goreng'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Rp. 20.000'),
                  SizedBox(height: 5),
                  Text('Nasi Goreng spesial dengan toping udang dan sayur.'),
                  SizedBox(height: 5),
                  RatingBarIndicator(
                    rating: 4.5,
                    itemBuilder: (context, index) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    itemCount: 5,
                    itemSize: 20.0,
                    direction: Axis.horizontal,
                  ), // Add the missing closing parenthesis here
                ],
              ),
              onTap: () {},
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.asset('images/miegoreng.jpg'),
              title: Text('Mie Goreng'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Rp. 15.000'),
                  SizedBox(height: 5),
                  Text('Mie Goreng spesial dengan Telur mata sapi, tomat, acar, cabe, dan sayur.'),
                  SizedBox(height: 5),
                  RatingBarIndicator(
                    rating: 3,
                    itemBuilder: (context, index) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    itemCount: 5,
                    itemSize: 20.0,
                    direction: Axis.horizontal,
                  ), // Add the missing closing parenthesis here
                ],
              ),
              onTap: () {},
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.asset('images/kwetiaugoreng.jpg'),
              title: Text('Kwetiau Goreng'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Rp. 25.000'),
                  SizedBox(height: 5),
                  Text('Kwetiau spesial dengan toping udang dan sayur.'),
                  SizedBox(height: 5),
                  RatingBarIndicator(
                    rating: 5,
                    itemBuilder: (context, index) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    itemCount: 5,
                    itemSize: 20.0,
                    direction: Axis.horizontal,
                  ), // Add the missing closing parenthesis here
                ],
              ),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}