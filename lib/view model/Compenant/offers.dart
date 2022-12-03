import 'package:flutter/material.dart';

class Offers extends StatelessWidget {
  const Offers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          height: 120,
          width: 120,
          child: Column(
            children: [Image(image: AssetImage('lib/assets/banana.png')),
              Text('Organic bananas\n'
                  'price')
            ],
          ),
        );
  }
}
