import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:workshop/view%20model/Screens/Mobile%20entry.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Image(
                height: 300,
                width: double.infinity,
                image: AssetImage('lib/assets/Login.png'),
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Get your groceries',
                    style: TextStyle(color: Colors.black, fontSize: 30),
                  ),
                  Text(
                    'with nectar',
                    style: TextStyle(color: Colors.black, fontSize: 30),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  IntlPhoneField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                    ),
                    initialCountryCode: 'IN',
                    onChanged: (phone) {
                      print(phone.completeNumber);
                    },
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MobileEntery()));
                    },
                  ),
                  Center(
                      child: Text(
                    'Or connect with social media',
                    style: TextStyle(color: Colors.grey),
                  )),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 60,
                    width: 400,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF5383EC
                        )),
                    child: MaterialButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.g_mobiledata_rounded,
                            size: 30,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Continue with Google',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 60,
                    width: 400,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF4A66AC),
                        ),
                    child: MaterialButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.facebook,
                            size: 30,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Continue with Facebook',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
