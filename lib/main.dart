import 'package:auth_flutter_coffe/Services/Auth.dart';
import 'package:auth_flutter_coffe/models/users.dart';
import 'package:auth_flutter_coffe/screens/Wrapper.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<CustomUser>.value(
      value: AuthService().user,
      child: MaterialApp(
        title: 'Flutter Demo',
        home: Wrapper(),
      ),
    );
  }
}
