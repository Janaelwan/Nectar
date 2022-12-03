import 'package:flutter/material.dart';
import 'package:workshop/view%20model/Screens/Welcome%20Screen.dart';

class SpalashScreen extends StatefulWidget {
  const SpalashScreen({Key? key}) : super(key: key);

  @override
  State<SpalashScreen> createState() => _SpalashScreenState();
}
class _SpalashScreenState extends State<SpalashScreen> {
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigtetohome();
  }

  void _navigtetohome() async {
    await Future.delayed(Duration(seconds: 3), () {});

    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        body:Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(height: 700 ,width: double.infinity,
                child: Center(
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,mainAxisSize: MainAxisSize.min,
                    children: [
                      Image(image: AssetImage('lib/assets/Vector.png'),color: Colors.white,fit: BoxFit.cover,),
                      SizedBox(width: 10,),
                      Text('necter',style: TextStyle(color: Colors.white,fontSize: 27,fontWeight:FontWeight.bold),)
                    ],
                  ),
                )),
          ],
        ))

    );
  }
}
