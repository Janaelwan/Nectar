import 'package:flutter/material.dart';
import 'package:workshop/view%20model/Screens/Layout/Fresh%20vegtables%20screen.dart';

class Register extends StatelessWidget {
  Register({Key? key}) : super(key: key);
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool choice = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              // gradient: LinearGradient(
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(fit: BoxFit.cover, height: 100, width: 100,
                    image: AssetImage('lib/assets/carrot.png',),
                  ),
                  SizedBox(height: 30,),
                  Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(height: 30,),
                  Text(
                    'Enter your email and password',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Email',
                    style: TextStyle(color: Colors.grey),
                  ),
                  TextField(
                    controller: email,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'password',
                    style: TextStyle(color: Colors.grey),
                  ),
                  TextField(
                    controller: password,
                    keyboardType: TextInputType.text,
                    obscureText: choice,
                    decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                        child: Icon(Icons.remove_red_eye),
                        onTap: () {
                          choice = true;
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF53B175)),
                      height: 60,
                      width: 600,
                      child: MaterialButton(onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>FreshS()));
                      },
                        child: Text('Sign up', style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),),)
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
