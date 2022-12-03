import 'package:flutter/material.dart';
import 'package:workshop/view%20model/Screens/LoginScreen.dart';

class ChooseCountry extends StatelessWidget {
  ChooseCountry({Key? key}) : super(key: key);
  TextEditingController address = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 300,
                  width: 500,
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'lib/assets/loction.png',
                    ),
                  ),
                ),
              ),
              Text(
                'Select your loction',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'swithch on your loction to stay in tone with\n whats happen on your area',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'your address',
                style: TextStyle(fontSize: 20),
              ),
              TextField(
                controller: address,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 60,
                width: double.infinity,
                color: Color(0xFF53B175),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
