import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sign_in_firebase/provider/provider.dart';
import 'package:sign_in_firebase/screens/welcome_page.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
     return ChangeNotifierProvider(
       create: (BuildContext context) => GoogleSignInProvider(),
       child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(

          primarySwatch: Colors.blue,
        ),
        home: const WelcomePage(),
    ),
     );
  }
}


