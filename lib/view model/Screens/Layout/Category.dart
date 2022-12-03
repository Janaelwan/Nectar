import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SafeArea(
          child: Column(
            children: [
              Text(
                'Find Product',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              TextField(
                  decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                labelText: 'search',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              )),
              Row(
                children: [
                  Container(height: 120,
                    width: 120,
                    color: Color(0xFF53B175B2),
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('lib/assets/fruits (2).png'),
                          
                        ),
                        Text('Frash Fruits &Vegetable')
                      ],
                    ),
                  ),
                  SizedBox(width: 15,),
                  Container(height: 120,
                    width: 120,
                    color: Color(0xFFF8A44C),
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('lib/assets/zyton.png'),

                        ),
                        Text('Cooking Oil & Ghee')
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
