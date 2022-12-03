import 'package:flutter/material.dart';
import 'package:workshop/Network/DioHelper/DioHelper.dart';
import 'package:workshop/Network/DioHelper/end%20points.dart';
import 'package:workshop/view%20model/Screens/Layout/Register.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool choice = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color(0xFFFCFCFC),
                      Colors.orange.withOpacity(0.1)
                    ]),
                  ),
                ),
                Image(
                  fit: BoxFit.cover,
                  height: 50,
                  width: 50,
                  image: AssetImage(
                    'lib/assets/carrot.png',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Registe',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(
              height: 20,
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
              height: 10,
            ),
            SizedBox(
              height: 20,
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
              height: 10,
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
            Container(
                decoration: BoxDecoration(color: Color(0xFF53B175)),
                height: 60,
                width: 600,
                child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                )),
            Row(
              children: [
                Text('Do not have an account'),
                TextButton(
                    onPressed: () {
                      DioHelper.postData(endPoint: login).then((value){
                        token=value.data['access_token'];
                        print(token);
                      }).catchError((error){print (error.response.data);});
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Register()));
                    },
                    child: Text('Register'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
