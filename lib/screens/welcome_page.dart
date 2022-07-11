import 'package:flutter/material.dart';
import 'package:sign_in_firebase/screens/login_screen.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {

  @override
  void initState(){
    super.initState();
    toLoginPage();
  }

  void toLoginPage(){
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const RegistrationPage()),
      );
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        color: Colors.black,
        child: Image.network(
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwUfJu_jtDMEyEk-6dTUpjniBjfL7tSGXpVQ&usqp=CAU",
          height: 830,
          //width: 380,
          fit: BoxFit.cover,
        ),
      ),
    ]));
  }
}
