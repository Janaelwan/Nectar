import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:workshop/view%20model/Screens/Layout/Category.dart';

class FreshS extends StatelessWidget {
  const FreshS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Center(child: Image(image: AssetImage('lib/assets/carrot2.png'))),
              Center(
                child: Row(
                  children: [
                    Icon(Icons.location_on_sharp),
                    Text('Dhaka, Banassre'),
                  ],
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  labelText: 'search store',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              CarouselSlider(
                items: [
                  Container(
                    child: Row(
                      children: [
                        Image(image: AssetImage('lib/assets/vegtables.png')),
                        Column(
                          children: [
                            Text(
                              'Fresh vegtables\n',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            Text('Get up to 40% offer',
                                style: TextStyle(color: Colors.green)),
                          ],
                        )
                      ],
                    ),
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.black12, Colors.blueGrey])),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Image(image: AssetImage('lib/assets/fruits (2).png')),
                        Column(
                          children: [
                            Text(
                              'Fresh fruits\n',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            Text('Get up to 30% offer',
                                style: TextStyle(color: Colors.green)),
                          ],
                        )
                      ],
                    ),
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.green, Colors.brown])),
                  )
                ],
                options: CarouselOptions(
                  scrollDirection: Axis.horizontal,
                  autoPlay: true,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Category()));
                    },
                    child: Text(
                      'All',
                      style: TextStyle(fontSize: 23, color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Cartegory1',
                      style: TextStyle(fontSize: 23, color: Colors.black),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'Excluive offer',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
