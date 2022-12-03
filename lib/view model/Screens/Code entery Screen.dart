import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:workshop/view%20model/Screens/select%20country.dart';

class CodeEntery extends StatefulWidget {
  CodeEntery({Key? key}) : super(key: key);

  @override
  State<CodeEntery> createState() => _CodeEnteryState();
}

class _CodeEnteryState extends State<CodeEntery> {
  TextEditingController code = TextEditingController();

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
                'Enter Your 4-digit code',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Text(
                'Code',
                style: TextStyle(color: Colors.grey),
              ),
              /*TextField(
                controller:code,
                maxLength: 4,
                keyboardType: TextInputType.number,
              )*/
              PinCodeTextField(
                length: 4,
                keyboardType: TextInputType.number,
                obscureText: false,
                controller: code,
                animationType: AnimationType.fade,
                animationDuration: Duration(milliseconds: 300),
                // Pass it here
                onChanged: (value) {
                  setState(() {
                    code.text = value;
                  });
                },
                appContext: context,
              ),
              SizedBox(
                height: 30,
              ),
              TextButton(
                onPressed: () {},
                child: Text('Resend code'),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ChooseCountry()));
        },
      child: Icon(Icons.arrow_right,size: 40,),
        backgroundColor: Color(0xFF53B175),

      ),
    );
  }
}
