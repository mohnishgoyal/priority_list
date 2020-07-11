import 'package:flutter/material.dart';
import 'package:priority_list/models/user.dart';
import 'package:priority_list/screens/wrapper.dart';
import 'package:priority_list/services/auth.dart';
import 'package:provider/provider.dart';

void main() =>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Wrapper(),
      ),
    );
  }
}