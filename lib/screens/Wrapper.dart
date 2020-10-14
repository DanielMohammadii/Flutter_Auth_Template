import 'package:auth_flutter_coffe/models/users.dart';
import 'package:auth_flutter_coffe/screens/Authencticate/Authenticate.dart';
import 'package:auth_flutter_coffe/screens/Home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<CustomUser>(context);
    print(user);
    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
