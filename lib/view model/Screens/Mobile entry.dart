import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:workshop/view%20model/Screens/Code%20entery%20Screen.dart';

class MobileEntery extends StatelessWidget {
  const MobileEntery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Enter your mobile phone',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Mobile Number',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                IntlPhoneField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                  initialCountryCode: 'IN',
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  onChanged: (phone) {
                    print(phone.completeNumber);
                  },
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (contxt)=>CodeEntery()));
          },
          child: Icon(
            Icons.arrow_right,size: 40,
            color: Colors.white,
          ),
          backgroundColor: Color(0xFF53B175),
        ));
  }
}
