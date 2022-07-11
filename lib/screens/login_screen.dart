import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sign_in_firebase/new_screen.dart';
import 'package:sign_in_firebase/provider/provider.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      appBar: AppBar(
        title: const Text("Sign In With Google"),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text("Hey There,\nWelcome back",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            const SizedBox(height: 50,),
            Center(
              child: Container(
                child: ElevatedButton.icon(

                  onPressed: () {
                    Provider.of<GoogleSignInProvider>(context,listen:false).googleLogIn(context, const NewScreen());
                  },
                  icon: const Icon(
                    Icons.email,
                    size: 25.0,
                    color: Colors.redAccent,
                  ),
                  label: const Text('Sign in with google'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueAccent,
                    //fixedSize: Size(250, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
