import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sign_in_firebase/provider/provider.dart';
import 'package:sign_in_firebase/screens/login_screen.dart';
class NewScreen extends StatefulWidget {
  const NewScreen({Key? key}) : super(key: key);

  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login Screen"),
      actions: [
        IconButton(onPressed: (){
          Provider.of<GoogleSignInProvider>(context,listen:false).googleSignOut(context, const RegistrationPage());
        },
          icon: const Icon(CupertinoIcons.power), color: Colors.white , )
      ],
      ),
      backgroundColor: Colors.brown,
    );
  }
}
